Vim�UnDo� J�����] ��Ί0m�0��s��8~���5.�!,   �           (      4       4   4   4    XTh=    _�                    �        ����                                                                                                                                                                                                                                                                                                                                                             XTe"     �   �   �   �            �   �   �   �    �   �   �   �          �   �   �   �    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             XTeb     �   �   �   �            entity_id: entry.id5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             XTec     �   �   �   �            entity_id { entry.id5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             XTed    �   �   �   �            entity_id { entry.id}5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTej     �   �   �   �    �   �   �   �    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTej     �   �   �   �    �   �   �   �    5�_�      	              �       ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTex     �   �   �   �    5�_�                 	   �       ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTe|     �   �   �   �      "    trait :triggered_email_sent do5�_�   	      
          �   %    ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTe�     �   �   �   �      '      action_type :triggered_email_sent5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTe�     �   �   �   �    �   �   �   �    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTe�     �   �   �   �    �   �   �   �    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTe�     �   �   �   �      "    trait :triggered_email_sent do5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTe�     �   �   �   �      '    trait :triggered_email_scheduled do5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTe�    �   �   �           5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTf      �   �   �   �    �   �   �   �    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTf    �   �   �   �    �   �   �   �    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTf     �   �   �   �            �   �   �   �    �   �   �   �          �   �   �   �    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTfF     �   �   �   �    �   �   �   �            trait action5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTfH     �   �   �           5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTfH     �   �   �   �       5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTfM     �   �   �   �               action_type action_typek5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTfN     �   �   �   �            trait action do5�_�                    �   3    ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTfQ     �   �   �   �      @    WorkProof::ACTION_TYPE_TO_CLASS.each do |action, class_name|5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTfV     �   �   �   �              �   �   �   �    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTfr     �   �   �   �              �   �   �   �    5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTf�     �   �   �   �            �   �   �   �    5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �          �   	       V       XTf�     �   �   �   �            trait action_type do           action_type action_type   #        entry { create(:entry_v2) }           entity_id {    	      end5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �   	       V       XTf�     �   �   �   �              �   �   �   �    5�_�                     �       ����                                                                                                                                                                                                                                                                                                                            �          �   	       V       XTf�    �   �   �   �                entity_id { 5�_�      !               �        ����                                                                                                                                                                                                                                                                                                                            �          �           V       XTf�     �   �   �       
       E    WorkProof::ACTION_TYPE_TO_CLASS.each do |action_type, class_name|         if class_name == 'entry'           trait action_type do   !          action_type action_type   %          entry { create(:entry_v2) }              entity_id { entry.id }           end   	      end       end5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                            �          �           V       XTf�     �         �    �         �    5�_�   !   #           "   �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        XTf�     �   �   �              end�   �   �                entity_id { entry.id }�   �   �          !      entry { create(:entry_v2) }�   �   �          ,      action_type :triggered_email_scheduled�   �   �          %    trait :triggered_sms_scheduled do�   �   �           �   �   �              end�   �   �                entity_id { entry.id }�   �   �          !      entry { create(:entry_v2) }�   �   �          ,      action_type :triggered_email_scheduled�   �   �          %    trait :triggered_sms_scheduled do�   �   �           �   �   �              end�   �   �                entity_id { entry.id }�   �   �          !      entry { create(:entry_v2) }�   �   �          '      action_type :triggered_email_sent�   �   �               trait :triggered_sms_sent do�   �   �           �   �   �              end�   �   �                entity_id { entry.id }�   �   �          !      entry { create(:entry_v2) }�   �   �          ,      action_type :triggered_email_scheduled�   �   �          '    trait :triggered_email_scheduled do�   �   �           �   �   �              end�   �   �                entity_id { entry.id }�   �   �          !      entry { create(:entry_v2) }�   �   �          '      action_type :triggered_email_sent�   �   �          "    trait :triggered_email_sent do�   �   �           �   �   �              end�   �   �                entity_id { entry.id }�   �   �          !      entry { create(:entry_v2) }�   �   �          ,      action_type :entry_attribute_obsoleted�   �   �          '    trait :entry_attribute_obsoleted do�   �   �           5�_�   "   $           #   �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        XTf�    �   �   �          # �   �   �          # �   �   �          # �   �   �          # �   �   �          # �   �   �          # 5�_�   #   %           $   	   	    ����                                                                                                                                                                                                                                                                                                                            �           �           V        XTf�     �      
   �            if class_name == 'entry'5�_�   $   &           %   	   1    ����                                                                                                                                                                                                                                                                                                                            �           �           V        XTf�    �      
   �      E      if ['entry', 'scheduled_message'].include?class_name == 'entry'5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                            �           �           V        XTf�     �         �                 entity_id { entry.id }5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                            �           �           V        XTf�     �         �                entity_id { 5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                            �           �           V        XTf�     �         �                  entry.id }5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                            �           �           V        XTg      �         �                  �         �    5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                            �           �           V        XTg     �         �                    �         �    �         �                  5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                            �           �           V        XTg     �         �                  when 'entry'5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                            �           �           V        XTg+    �                            entry.id 5�_�   ,   .           -           ����                                                                                                                                                                                                                                                                                                                               
       %           V   
    XTg4   
 �   #   %              end�   "   $          1      entity_id { create(:scheduled_message).id }�   !   #          ,      action_type :scheduled_message_deleted�       "          '    trait :scheduled_message_deleted do�                     end�                1      entity_id { create(:scheduled_message).id }�                ,      action_type :scheduled_message_created�                '    trait :scheduled_message_created do�                    end�                1      entity_id { create(:scheduled_message).id }�                ,      action_type :scheduled_message_updated�                '    trait :scheduled_message_updated do5�_�   -   /           .   �       ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTgX     �   �   �       $   #   )#     trait :entry_attribute_obsoleted do   .#       action_type :entry_attribute_obsoleted   ##       entry { create(:entry_v2) }   #       entity_id { entry.id }   	#     end   #   $#     trait :triggered_email_sent do   )#       action_type :triggered_email_sent   ##       entry { create(:entry_v2) }   #       entity_id { entry.id }   	#     end   #   )#     trait :triggered_email_scheduled do   .#       action_type :triggered_email_scheduled   ##       entry { create(:entry_v2) }   #       entity_id { entry.id }   	#     end   #   "#     trait :triggered_sms_sent do   )#       action_type :triggered_email_sent   ##       entry { create(:entry_v2) }   #       entity_id { entry.id }   	#     end   #   '#     trait :triggered_sms_scheduled do   .#       action_type :triggered_email_scheduled   ##       entry { create(:entry_v2) }   #       entity_id { entry.id }   	#     end   #   '#     trait :triggered_sms_scheduled do   .#       action_type :triggered_email_scheduled   ##       entry { create(:entry_v2) }   #       entity_id { entry.id }   	#     end5�_�   .   0           /           ����                                                                                                                                                                                                                                                                                                                                       %           V        XTg^     �                    )    # trait :scheduled_message_updated do   .    #   action_type :scheduled_message_updated   3    #   entity_id { create(:scheduled_message).id }   	    # end       )    # trait :scheduled_message_created do   .    #   action_type :scheduled_message_created   3    #   entity_id { create(:scheduled_message).id }   	    # end       )    # trait :scheduled_message_deleted do   .    #   action_type :scheduled_message_deleted   3    #   entity_id { create(:scheduled_message).id }   	    # end    5�_�   /   1           0          ����                                                                                                                                                                                                                                                                                                                                                  V        XTg^     �         �    �         �    5�_�   0   2           1          ����                                                                                                                                                                                                                                                                                                                                                  V        XTg`    �      
   �            �      
   �    5�_�   1   3           2      $    ����                                                                                                                                                                                                                                                                                                                                                  V        XTgo    �         �          �         �    5�_�   2   4           3   	   (    ����                                                                                                                                                                                                                                                                                                                                                  V        XTgw    �      
   �      (      # Handle generic work proof traits5�_�   3               4           ����                                                                                                                                                                                                                                                                                                                                                  V        XTh<     �               �   FactoryGirl.define do     factory :work_proof do       message_thread       user       entity_id 1   *    action_type :scheduled_message_updated       E    WorkProof::ACTION_TYPE_TO_CLASS.each do |action_type, class_name|   f      # Handle generic work proof traits, rather than needing to enumerate every type as its own trait   <      if ['entry', 'scheduled_message'].include?(class_name)           trait action_type do   !          action_type action_type   %          entry { create(:entry_v2) }             entity_id do               case class_name   &            when 'entry' then entry.id   G            when 'scheduled_message' then create(:scheduled_message).id               end             end           end   	      end       end           # More specialized traits   %    trait :scheduled_email_created do   *      action_type :scheduled_email_created   !      entry { create(:entry_v1) }   _      entry_tag { create(:entry_tag, entry: entry, tag: Tag.find_or_create_by(name: "Email")) }   9      # Ensure that scheduled email is sent in the future   x      entity_id { create(:scheduled_email, entry_tag: entry_tag, to: 'work@act.ions', send_at: 30.minutes.from_now).id }       end       "    trait :scheduled_email_sent do   '      action_type :scheduled_email_sent   !      entry { create(:entry_v1) }   _      entry_tag { create(:entry_tag, entry: entry, tag: Tag.find_or_create_by(name: "Email")) }   Z      entity_id { create(:scheduled_email, entry_tag: entry_tag, to: 'work@act.ions').id }       end            trait :scheduled_sms_sent do   %      action_type :scheduled_sms_sent   !      entry { create(:entry_v1) }   ]      entry_tag { create(:entry_tag, entry: entry, tag: Tag.find_or_create_by(name: "Sms")) }   C      entity_id { create(:scheduled_sms, entry_tag: entry_tag).id }       end       $    trait :calendar_event_created do   )      action_type :calendar_event_created   !      entry { create(:entry_v1) }   b      entry_tag { create(:entry_tag, entry: entry, tag: Tag.find_or_create_by(name: "Calendar")) }   c      entity_id { create(:gcal_event_log, entry_tag: entry_tag, event_title: 'cal work proof').id }       end       $    trait :calendar_event_updated do   )      action_type :calendar_event_updated   !      entry { create(:entry_v1) }   b      entry_tag { create(:entry_tag, entry: entry, tag: Tag.find_or_create_by(name: "Calendar")) }   c      entity_id { create(:gcal_event_log, entry_tag: entry_tag, event_title: 'cal work proof').id }       end       $    trait :calendar_event_deleted do   )      action_type :calendar_event_deleted   !      entry { create(:entry_v1) }   b      entry_tag { create(:entry_tag, entry: entry, tag: Tag.find_or_create_by(name: "Calendar")) }   c      entity_id { create(:gcal_event_log, entry_tag: entry_tag, event_title: 'cal work proof').id }       end               trait :phonecall_made do   !      action_type :phonecall_made   !      entry { create(:entry_v1) }   c      entry_tag { create(:entry_tag, entry: entry, tag: Tag.find_or_create_by(name: "Phonecall")) }   @      entity_id { create(:phone_call, entry_tag: entry_tag).id }       end           trait :purchase_made do          action_type :purchase_made   !      entry { create(:entry_v1) }   b      entry_tag { create(:entry_tag, entry: entry, tag: Tag.find_or_create_by(name: "Purchase")) }   F      entity_id { create(:user_transaction, entry_tag: entry_tag).id }       end       !    trait :vault_item_accessed do   &      action_type :vault_item_accessed   0      entry { create(:entry_v2, :vault_entry ) }       end           trait :added_to_list do          action_type :added_to_list   *      entity_id { create(:entry_list).id }   !      entry { create(:entry_v1) }       end           trait :removed_from_list do   $      action_type :removed_from_list   *      entity_id { create(:entry_list).id }   !      entry { create(:entry_v1) }       end       $    trait :arrival_time_estimated do   )      action_type :arrival_time_estimated   .      entity_id { create(:thread_request).id }   C      message_thread { create(:thread_being_worked_on, :fin_plus) }       end           trait :added_category do   !      action_type :added_category   �      entity_id { create(:internal_thread_categorization, message_thread: create(:thread_being_worked_on, :fin_plus), category: 'shopping').id }   C      message_thread { create(:thread_being_worked_on, :fin_plus) }       end       %    trait :added_category_internal do   !      action_type :added_category   �      entity_id { create(:internal_thread_categorization, message_thread: create(:thread_being_worked_on, :fin_plus), category: 'conversation').id }   C      message_thread { create(:thread_being_worked_on, :fin_plus) }       end       #    trait :added_billed_activity do   (      action_type :added_billed_activity   �      entity_id { create(:billed_activity, message_thread: create(:thread_being_worked_on, :fin_plus, user: create(:user, :paying)), category: 'shopping').id }       end       &    trait :refunded_billed_activity do   +      action_type :refunded_billed_activity   �      entity_id { create(:billed_activity, message_thread: create(:thread_being_worked_on, :fin_plus, user: create(:user, :paying)), category: 'shopping').id }       end       +    trait :added_recurring_fin_plus_task do   0      action_type :added_recurring_fin_plus_task   >      entity_id { create(:agent_task, :weekly, :fin_plus).id }       end           trait :entry_created do          action_type :entry_created   !      entry { create(:entry_v1) }         entity_id { entry.id }       end           trait :entry_updated do          action_type :entry_updated   !      entry { create(:entry_v1) }         entity_id { entry.id }       end     end   end5�_�   	              
   �   $    ����                                                                                                                                                                                                                                                                                                                            �          �          V       XTe     �   �   �   �      +      action_type :triggered_email_cheduled5�_�                     �        ����                                                                                                                                                                                                                                                                                                                                                             XTe!     �   �   �   �       5��