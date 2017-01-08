Vim�UnDo� B����fSȳ�/�`c!�����x���m1���   �                                  XcH�    _�                     �        ����                                                                                                                                                                                                                                                                                                                                                             Xc �     �   �   �   �    �   �   �   �    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             Xc �     �   �   �   �    �   �   �   �    5�_�                    �   S    ����                                                                                                                                                                                                                                                                                                                                                             Xc �    �   �   �   �      {    object.checklist_items.any? { |checklist_item| checklist_item.checklistable == user_preference && !checklist_item.done}5�_�                    �   5    ����                                                                                                                                                                                                                                                                                                                                                             Xc!l    �   �   �   �        �   �   �   �    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             XcF�     �               �   # == Schema Information   #   # Table name: user_preferences   #   D#  id                        :integer          not null, primary key   7#  user_id                   :integer          not null   "#  preference                :text   7#  preference_type           :integer          not null   <#  active                    :boolean          default(TRUE)   %#  entry_tag_id              :integer   %#  global_user_preference_id :integer   &#  created_at                :datetime   &#  updated_at                :datetime   #   	# Indexes   #   F#  index_user_preferences_on_entry_tag_id               (entry_tag_id)   S#  index_user_preferences_on_global_user_preference_id  (global_user_preference_id)   I#  index_user_preferences_on_preference_type            (preference_type)   A#  index_user_preferences_on_user_id                    (user_id)   #       )class UserPreference < ActiveRecord::Base     has_paper_trail         belongs_to :user     belongs_to :entry_tag   @  belongs_to :global_user_preference, class_name: UserPreference   a  has_many :user_preferences, class_name: UserPreference, foreign_key: :global_user_preference_id   L  has_many :triggers, class_name: UserPreferenceTrigger, dependent: :destroy   /  has_many :checklist_items, as: :checklistable       .  scope :active, -> () { where(active: true) }   A  scope :global, -> () { where(user_id: User.fin_team_agent_id) }       $  validates :user_id, presence: true   8  validates_uniqueness_of :entry_tag_id, allow_nil: true   s  validates_uniqueness_of :global_user_preference_id, scope: :user_id, allow_nil: true, if: lambda { |p| p.active }   ?  validate :preference_non_nil_if_global_user_preference_id_nil   C  # NB:  If `preference` is nil, we refer to the global preference;   P  # if not (i.e. the preference has been customized for the user), we maintain a   ^  # reference to the global preference but override its text with that of the user preference.       +  ENTRY_TAG_NAME = 'User Preference'.freeze   C  GLOBAL_PREFERENCES_ENTRY_NAME = 'Default User Preferences'.freeze         enum preference_type: {   %    auto_generated_checklist_item: 1,   /    auto_generated_entry_tag_checklist_item: 2,     }       %  def for_api(include_triggers: true)       hash = {         id: id,         user_id: user_id,   !      entry_tag_id: entry_tag_id,   "      preference: preference_text,   '      preference_type: preference_type,         active: active,       }   A    hash[:triggers] = triggers.map(&:for_api) if include_triggers       hash     end         def checklist_item_text       preference_text     end         def preference_text   N    preference.present? ? preference : global_user_preference.try(:preference)     end         def deactivate(current_agent)       update!(active:false)        if user_preferences.present?   �      user_preferences.find_each { |user_preference| user_preference.entry_tag.archive(current_agent) } # archiving the entry tag will deactivate the preference as well       end   G    WorkAction.create_from(current_agent, :user_preference_deleted, id)     end       9  def preference_non_nil_if_global_user_preference_id_nil   <    if preference.blank? && global_user_preference_id.blank?   ^      errors[:preference] << "must have either preference text or a global user preference id"       end     end         def is_global?   %    user_id == User.fin_team_agent_id     end       B  # Called in the controller when a new global preference is added   X  def self.create_user_preferences_from_new_global_preference_delayed(global_preference)   C    User.active_members.find_in_batches(batch_size: 200) do |users|   l      delay(priority: 20).batch_create_user_preferences_from_new_global_preference(global_preference, users)       end     end       ]  def self.batch_create_user_preferences_from_new_global_preference(global_preference, users)       users.each do |user|   P      create_user_preferences_from_global_preference(global_preference, user.id)       end     end       2  # Called after_commit when a new user is created   :  def self.create_global_preferences_for_new_user(user_id)   -    global.active.each do |global_preference|   P      create_user_preferences_from_global_preference(global_preference, user_id)       end     end          def self.global_preferences_ke       Entry.find_or_create_by(   &      user_id: User.fin_team_agent_id,   +      title: GLOBAL_PREFERENCES_ENTRY_NAME,         kb: true,   &      agent_id: User.fin_team_agent_id       )     end       6  def self.default_preferences_entry_for_user(user_id)        found_entry = Entry.find_by(         user_id: user_id,   +      title: GLOBAL_PREFERENCES_ENTRY_NAME,   +      kb_entry_id: global_preferences_ke.id       )           if found_entry.present?         return found_entry       else         Entry.create!(           user_id: user_id,   )        agent_id: User.fin_team_agent_id,   -        title: GLOBAL_PREFERENCES_ENTRY_NAME,   -        kb_entry_id: global_preferences_ke.id         )       end     end       U  def self.create_user_preferences_from_global_preference(global_preference, user_id)   _    user_default_preferences_entry = UserPreference.default_preferences_entry_for_user(user_id)       �    preference_entry_tag = EntryTag.create!(tag: Tag.find_by(name: ENTRY_TAG_NAME), entry: user_default_preferences_entry, created_by_agent_id: User.fin_team_agent_id)       ,    new_preference = UserPreference.create!(   6      global_user_preference_id: global_preference.id,         user_id: user_id,   9      preference_type: global_preference.preference_type,   ,      entry_tag_id: preference_entry_tag.id,       )       i    global_preference.duplicate_triggers_for_user_preference(new_preference) if new_preference.persisted?     end       {  # Used when a new user is added to create duplicate triggers for all user preferences that refer to the global preference   =  def duplicate_triggers_for_user_preference(user_preference)       triggers.each do |trigger|   [      UserPreferenceTrigger.duplicate_trigger_for_user_preference(trigger, user_preference)       end     end       x  # We don't add a new checklist item to an object if it already has an un-done checklist item for that user preference.   n  # Since done items are collapsed on the front end, we will add a new checklist item if there are done items.         # TODO: Add specs for this   6  def undone_checklist_item_exists_for_object?(object)   p    object.checklist_items.any? { |checklist_item| checklist_item.checklistable == self && !checklist_item.done}     end   end5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             XcH�     �   �   �            # TODO: Add specs for this5�_�                     �        ����                                                                                                                                                                                                                                                                                                                                                             XcH�    �   �   �           5��