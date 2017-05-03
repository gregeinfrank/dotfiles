Vim�UnDo� ��73T�,-����O�H��tkdw#9��'m�   �           ^                       X�~
    _�                     V        ����                                                                                                                                                                                                                                                                                                                            V          Z           V       X�h�    �   U   V          $    entry_list_created: :entry_list,   $    entry_list_updated: :entry_list,   $    entry_list_deleted: :entry_list,   !    entry_list_sent: :entry_list,    5�_�                    V        ����                                                                                                                                                                                                                                                                                                                            V          V           V       X�h�     �               �   # == Schema Information   #   # Table name: work_actions   #   <#  id                :integer          not null, primary key   /#  message_thread_id :integer          not null   /#  agent_id          :integer          not null   /#  user_id           :integer          not null   /#  action_type       :string           not null   /#  entity_id         :integer          not null   /#  entity_class_name :string           not null   /#  queue_log_id      :integer          not null   /#  created_at        :datetime         not null   /#  updated_at        :datetime         not null   #  client_created_at :datetime   #  entity_type       :string   #   	# Indexes   #   C#  index_work_actions_on_created_at                    (created_at)   B#  index_work_actions_on_entity_id                     (entity_id)   J#  index_work_actions_on_message_thread_id             (message_thread_id)   Q#  index_work_actions_on_queue_log_id_and_action_type  (queue_log_id,action_type)   K#  index_work_actions_on_user_id_and_created_at        (user_id,created_at)   #       %class WorkAction < ActiveRecord::Base   1  # Work Actions are the record of work agents do   N  # They're linked back to threads, to see a list of all the things done while     # working on a thread.     belongs_to :message_thread     belongs_to :user   %  belongs_to :agent, class_name: User     belongs_to :queue_log       $  has_many :reviews, as: :reviewable         REVIEWABLE_WORK_ACTIONS = %w(       phonecall_made       phonecall_v2_made       purchase_made       calendar_event_created       scheduled_email_sent       entry_created       entry_updated       entry_viewed       checklist_item_created       checklist_item_updated       checklist_item_marked_done        checklist_item_marked_undone   *    message_thread_checklist_item_archived       message_thread_tagged       message_thread_viewed        message_thread_title_updated       message_sent       url_visited       dashboard_search_executed   
  ).freeze       '  WORK_THREAD_ACTION_TYPE_FORMATTED = {   0    user_profile_updated: "Update user profile",   9    message_outbound_created: "Compose outbound message",   9    user_preference_extracted: "Extract user preference",   
  }.freeze       &  WORK_THREAD_ACTION_TYPE_TO_CLASS = {   *    user_profile_updated: :message_thread,   .    message_outbound_created: :message_thread,   /    user_preference_extracted: :message_thread,   
  }.freeze       "  # action_type: entity_class_name     ACTION_TYPE_TO_CLASS = {       entry_created: :entry,       entry_updated: :entry,       entry_viewed: :entry,       entry_linked: :entry,       entry_unlinked: :entry,   "    entry_editing_started: :entry,        entry_editing_ended: :entry,   $    entry_attribute_created: :entry,   $    entry_attribute_updated: :entry,   $    entry_attribute_deleted: :entry,   &    entry_attribute_obsoleted: :entry,       "    entry_tag_created: :entry_tag,   "    entry_tag_updated: :entry_tag,   "    entry_tag_deleted: :entry_tag,       '    agent_task_tagging_started: :entry,   %    agent_task_tagging_ended: :entry,       /    message_thread_tagged: :message_thread_tag,       4    message_thread_tagging_started: :message_thread,   2    message_thread_tagging_ended: :message_thread,   +    message_thread_viewed: :message_thread,   2    message_thread_title_updated: :message_thread,   1    message_thread_notes_edited: :message_thread,   #    message_text_updated: :message,   -    message_compose_started: :message_thread,   +    message_compose_ended: :message_thread,       &    scheduled_message_created: :entry,   &    scheduled_message_updated: :entry,   &    scheduled_message_deleted: :entry,           agent_task_created: :entry,       agent_task_updated: :entry,       agent_task_deleted: :entry,       !    scheduled_email_sent: :entry,   $    scheduled_email_created: :entry,   $    scheduled_email_updated: :entry,   $    scheduled_email_deleted: :entry,       "    scheduled_sms_created: :entry,   "    scheduled_sms_updated: :entry,   "    scheduled_sms_deleted: :entry,       scheduled_sms_sent: :entry,       ,    calendar_event_created: :gcal_event_log,   ,    calendar_event_updated: :gcal_event_log,   ,    calendar_event_deleted: :gcal_event_log,       /    calendar_vertical_list_view_started: :user,   -    calendar_vertical_list_view_ended: :user,       4    checklist_section_view_started: :message_thread,   2    checklist_section_view_ended: :message_thread,       0    messages_list_view_started: :message_thread,   .    messages_list_view_ended: :message_thread,       !    url_visited: :chrome_webhook,   1    dashboard_search_executed: :dashboard_search,       message_sent: :message,       '    phonecall_conference_ended: :entry,   )    phonecall_conference_started: :entry,            phonecall_made: :phone_call,   !    phonecall_ended: :phone_call,       phonecall_v2_made: :entry,       phonecall_v2_ended: :entry,   %    phonecall_v2_in_progress: :entry,   '    phonecall_in_progress: :phone_call,       -    transcription_started: :media_attachment,   +    transcription_ended: :media_attachment,       %    purchase_made: :user_transaction,   2    external_research_created: :external_research,   2    external_research_updated: :external_research,   2    external_research_started: :external_research,       ,    checklist_item_created: :checklist_item,   ,    checklist_item_updated: :checklist_item,   0    checklist_item_marked_done: :checklist_item,   2    checklist_item_marked_undone: :checklist_item,   s    message_thread_checklist_item_deleted: :message_thread_checklist_item, # deprecated - we now just archive these   K    message_thread_checklist_item_archived: :message_thread_checklist_item,       .    user_preference_created: :user_preference,   .    user_preference_deleted: :user_preference,   .    user_preference_updated: :user_preference,       C    update_proxy_contact_membership_ban: :proxy_contact_membership,   J    update_proxy_contact_membership_subscribed: :proxy_contact_membership,   2  }.merge(WORK_THREAD_ACTION_TYPE_TO_CLASS).freeze       R  validates :action_type, inclusion: { in: ACTION_TYPE_TO_CLASS.keys.map(&:to_s) }   Z  validates :entity_class_name, inclusion: { in: ACTION_TYPE_TO_CLASS.values.map(&:to_s) }   l  validates :message_thread_id, :agent_id, :user_id, :action_type, :queue_log_id, :entity_id, presence: true   5  validates :entity_type, presence: true, on: :create         def entity   A    entity_class_name.classify.constantize.find_by(id: entity_id)     end       "  def self.class_name(action_type)   %    ACTION_TYPE_TO_CLASS[action_type]     end       f  def self.create_from(current_user, action_type, entity, client_created_at=nil, action_thread_id=nil)       agent_id = current_user.id   A    entity_thread_id = self.entity_thread_id(action_type, entity)        if action_thread_id.present?   :      action_thread = MessageThread.find(action_thread_id)   {    elsif entity_thread_id && current_user.locked_triage_thread && entity_thread_id == current_user.locked_triage_thread.id   7      action_thread = current_user.locked_triage_thread       else   8      action_thread = current_user.locked_working_thread       end       if action_thread   0      queue_log = action_thread.active_queue_log         create(   ,        message_thread_id: action_thread.id,           agent_id: agent_id,   '        user_id: action_thread.user_id,   !        action_type: action_type,           entity_id: entity.id,   '        entity_type: entity.class.name,   3        entity_class_name: class_name(action_type),   #        queue_log_id: queue_log.id,   -        client_created_at: client_created_at,         )       end     end       0  def self.entity_thread_id(action_type, entity)   6    return nil if entity.id == MessageThread::NEEDS_ID   !    if entity.is_a? MessageThread         entity.id       elsif entity.is_a? Message         entity.message_thread_id       else   	      nil       end     end         def entry   2    return nil unless entity_class_name == "entry"   
    entity     end         def external_research   >    return nil unless entity_class_name == "external_research"   
    entity     end         def for_finder_api       {         id: id,   +      message_thread_id: message_thread_id,         agent_id: agent_id,         user_id: user_id,         action_type: action_type,   D      entity: defined?(entity.for_api) ? entity.for_api : entity.id,   +      entity_class_name: entity_class_name,   ;      thread_request_id: queue_log.try(:thread_request_id),         created_at: created_at,         updated_at: updated_at,   +      client_created_at: client_created_at,       }     end   end5�_�                    "        ����                                                                                                                                                                                                                                                                                                                                                             X�js     �   "   $   �    �   "   #   �    5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �          �           V       X�jw    �   �   �            def entity   A    entity_class_name.classify.constantize.find_by(id: entity_id)     end    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �           V       X�j�     �   �   �   �              entity_id: entity.id,5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �           V       X�j�     �   �   �   �              entity: entity.id,5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �           V       X�j�    �   �   �          '        entity_type: entity.class.name,5�_�      	              �       ����                                                                                                                                                                                                                                                                                                                            �          �           V       X�j�     �   �   �   �      2    return nil unless entity_class_name == "entry"5�_�      
           	   �   &    ����                                                                                                                                                                                                                                                                                                                            �          �           V       X�j�     �   �   �   �      ,    return nil unless entity_type == "entry"5�_�   	              
   �   ,    ����                                                                                                                                                                                                                                                                                                                            �          �           V       X�j�     �   �   �   �      >    return nil unless entity_class_name == "external_research"5�_�   
                 �       ����                                                                                                                                                                                                                                                                                                                            �          �           V       X�j�     �   �   �   �      =    return nil unless entity_class_name == "ExternalResearch"5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �           V       X�j�     �   �   �          Z  validates :entity_class_name, inclusion: { in: ACTION_TYPE_TO_CLASS.values.map(&:to_s) }5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �          �           V       X�j�     �   �   �            def external_research   7    return nil unless entity_type == "ExternalResearch"   
    entity     end    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �           �          V   &    X�j�    �   �   �            def entry   ,    return nil unless entity_type == "Entry"   
    entity     end    5�_�                    �   (    ����                                                                                                                                                                                                                                                                                                                            �           �          V   &    X�l    �   �   �   �      5  validates :entity_type, presence: true, on: :create5�_�                    �   ^    ����                                                                                                                                                                                                                                                                                                                            �           �          V   &    X�l     �   �   �   �      l  validates :message_thread_id, :agent_id, :user_id, :action_type, :queue_log_id, :entity_id, presence: true5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �           �          V   &    X�l    �   �   �          (  validates :entity_type, presence: true5�_�                     W        ����                                                                                                                                                                                                                                                                                                                            �           �          V   &    X�~	     �               �   # == Schema Information   #   # Table name: work_actions   #   <#  id                :integer          not null, primary key   /#  message_thread_id :integer          not null   /#  agent_id          :integer          not null   /#  user_id           :integer          not null   /#  action_type       :string           not null   /#  entity_id         :integer          not null   /#  entity_class_name :string           not null   /#  queue_log_id      :integer          not null   /#  created_at        :datetime         not null   /#  updated_at        :datetime         not null   #  client_created_at :datetime   #  entity_type       :string   #   	# Indexes   #   C#  index_work_actions_on_created_at                    (created_at)   B#  index_work_actions_on_entity_id                     (entity_id)   J#  index_work_actions_on_message_thread_id             (message_thread_id)   Q#  index_work_actions_on_queue_log_id_and_action_type  (queue_log_id,action_type)   K#  index_work_actions_on_user_id_and_created_at        (user_id,created_at)   #       %class WorkAction < ActiveRecord::Base   1  # Work Actions are the record of work agents do   N  # They're linked back to threads, to see a list of all the things done while     # working on a thread.     belongs_to :message_thread     belongs_to :user   %  belongs_to :agent, class_name: User     belongs_to :queue_log   '  belongs_to :entity, polymorphic: true       $  has_many :reviews, as: :reviewable         REVIEWABLE_WORK_ACTIONS = %w(       phonecall_made       phonecall_v2_made       purchase_made       calendar_event_created       scheduled_email_sent       entry_created       entry_updated       entry_viewed       checklist_item_created       checklist_item_updated       checklist_item_marked_done        checklist_item_marked_undone   *    message_thread_checklist_item_archived       message_thread_tagged       message_thread_viewed        message_thread_title_updated       message_sent       url_visited       dashboard_search_executed   
  ).freeze       '  WORK_THREAD_ACTION_TYPE_FORMATTED = {   0    user_profile_updated: "Update user profile",   9    message_outbound_created: "Compose outbound message",   9    user_preference_extracted: "Extract user preference",   
  }.freeze       &  WORK_THREAD_ACTION_TYPE_TO_CLASS = {   *    user_profile_updated: :message_thread,   .    message_outbound_created: :message_thread,   /    user_preference_extracted: :message_thread,   
  }.freeze       "  # action_type: entity_class_name     ACTION_TYPE_TO_CLASS = {       entry_created: :entry,       entry_updated: :entry,       entry_viewed: :entry,       entry_linked: :entry,       entry_unlinked: :entry,   "    entry_editing_started: :entry,        entry_editing_ended: :entry,   $    entry_attribute_created: :entry,   $    entry_attribute_updated: :entry,   $    entry_attribute_deleted: :entry,   &    entry_attribute_obsoleted: :entry,       $    entry_list_created: :entry_list,   $    entry_list_updated: :entry_list,   $    entry_list_deleted: :entry_list,   !    entry_list_sent: :entry_list,       "    entry_tag_created: :entry_tag,   "    entry_tag_updated: :entry_tag,   "    entry_tag_deleted: :entry_tag,       '    agent_task_tagging_started: :entry,   %    agent_task_tagging_ended: :entry,       /    message_thread_tagged: :message_thread_tag,       4    message_thread_tagging_started: :message_thread,   2    message_thread_tagging_ended: :message_thread,   +    message_thread_viewed: :message_thread,   2    message_thread_title_updated: :message_thread,   1    message_thread_notes_edited: :message_thread,   #    message_text_updated: :message,   -    message_compose_started: :message_thread,   +    message_compose_ended: :message_thread,       &    scheduled_message_created: :entry,   &    scheduled_message_updated: :entry,   &    scheduled_message_deleted: :entry,           agent_task_created: :entry,       agent_task_updated: :entry,       agent_task_deleted: :entry,       !    scheduled_email_sent: :entry,   $    scheduled_email_created: :entry,   $    scheduled_email_updated: :entry,   $    scheduled_email_deleted: :entry,       "    scheduled_sms_created: :entry,   "    scheduled_sms_updated: :entry,   "    scheduled_sms_deleted: :entry,       scheduled_sms_sent: :entry,       ,    calendar_event_created: :gcal_event_log,   ,    calendar_event_updated: :gcal_event_log,   ,    calendar_event_deleted: :gcal_event_log,       /    calendar_vertical_list_view_started: :user,   -    calendar_vertical_list_view_ended: :user,       4    checklist_section_view_started: :message_thread,   2    checklist_section_view_ended: :message_thread,       0    messages_list_view_started: :message_thread,   .    messages_list_view_ended: :message_thread,       !    url_visited: :chrome_webhook,   1    dashboard_search_executed: :dashboard_search,       message_sent: :message,       '    phonecall_conference_ended: :entry,   )    phonecall_conference_started: :entry,            phonecall_made: :phone_call,   !    phonecall_ended: :phone_call,       phonecall_v2_made: :entry,       phonecall_v2_ended: :entry,   %    phonecall_v2_in_progress: :entry,   '    phonecall_in_progress: :phone_call,       -    transcription_started: :media_attachment,   +    transcription_ended: :media_attachment,       %    purchase_made: :user_transaction,   2    external_research_created: :external_research,   2    external_research_updated: :external_research,   2    external_research_started: :external_research,       ,    checklist_item_created: :checklist_item,   ,    checklist_item_updated: :checklist_item,   0    checklist_item_marked_done: :checklist_item,   2    checklist_item_marked_undone: :checklist_item,   s    message_thread_checklist_item_deleted: :message_thread_checklist_item, # deprecated - we now just archive these   K    message_thread_checklist_item_archived: :message_thread_checklist_item,       .    user_preference_created: :user_preference,   .    user_preference_deleted: :user_preference,   .    user_preference_updated: :user_preference,       C    update_proxy_contact_membership_ban: :proxy_contact_membership,   J    update_proxy_contact_membership_subscribed: :proxy_contact_membership,   2  }.merge(WORK_THREAD_ACTION_TYPE_TO_CLASS).freeze       R  validates :action_type, inclusion: { in: ACTION_TYPE_TO_CLASS.keys.map(&:to_s) }   z  validates :message_thread_id, :agent_id, :user_id, :action_type, :queue_log_id, :entity_id, :entity_type, presence: true       "  def self.class_name(action_type)   %    ACTION_TYPE_TO_CLASS[action_type]     end       f  def self.create_from(current_user, action_type, entity, client_created_at=nil, action_thread_id=nil)       agent_id = current_user.id   A    entity_thread_id = self.entity_thread_id(action_type, entity)        if action_thread_id.present?   :      action_thread = MessageThread.find(action_thread_id)   {    elsif entity_thread_id && current_user.locked_triage_thread && entity_thread_id == current_user.locked_triage_thread.id   7      action_thread = current_user.locked_triage_thread       else   8      action_thread = current_user.locked_working_thread       end       if action_thread   0      queue_log = action_thread.active_queue_log         create(   ,        message_thread_id: action_thread.id,           agent_id: agent_id,   '        user_id: action_thread.user_id,   !        action_type: action_type,           entity: entity,   3        entity_class_name: class_name(action_type),   #        queue_log_id: queue_log.id,   -        client_created_at: client_created_at,         )       end     end       0  def self.entity_thread_id(action_type, entity)   6    return nil if entity.id == MessageThread::NEEDS_ID   !    if entity.is_a? MessageThread         entity.id       elsif entity.is_a? Message         entity.message_thread_id       else   	      nil       end     end         def for_finder_api       {         id: id,   +      message_thread_id: message_thread_id,         agent_id: agent_id,         user_id: user_id,         action_type: action_type,   D      entity: defined?(entity.for_api) ? entity.for_api : entity.id,   +      entity_class_name: entity_class_name,   ;      thread_request_id: queue_log.try(:thread_request_id),         created_at: created_at,         updated_at: updated_at,   +      client_created_at: client_created_at,       }     end   end5��