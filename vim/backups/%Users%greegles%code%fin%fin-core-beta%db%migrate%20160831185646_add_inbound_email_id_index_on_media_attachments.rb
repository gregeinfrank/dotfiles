Vim�UnDo� Ҥ5�.4�J�/c�O�){DLF3���<�   	   3    add_index :media_attachments, :inbound_email_id      3                       W�(�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             W�(�     �             �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             W�(�     �               sdb/migrate/20160830023024_add_is_message_thread_category_to_tags.rb|4| add_index :tags, :is_message_thread_category5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        W�(�     �               ,add_index :tags, :is_message_thread_category5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        W�(�     �               .  add_index :tags, :is_message_thread_category5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        W�(�     �               0    add_index :tags, :is_message_thread_category5�_�                       #    ����                                                                                                                                                                                                                                                                                                                                                  V        W�(�    �               =    add_index :media_attachments, :is_message_thread_category5�_�      
                    ����                                                                                                                                                                                                                                                                                                                                                  V        W�(�     �             �             5�_�         	       
          ����                                                                                                                                                                                                                                                                                                                                                  V        W�(�     �             �             5�_�   
                    3    ����                                                                                                                                                                                                                                                                                                                                                  V        W�(�     �         	      3    add_index :media_attachments, :inbound_email_id5�_�                        A    ����                                                                                                                                                                                                                                                                                                                                                  V        W�(�    �         	      M    add_index :media_attachments, :inbound_email_id, algorithm: :CONCURRENTLY5�_�              
   	          ����                                                                                                                                                                                                                                                                                                                                                  V        W�(�     �             �                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        W�(�     �             �               =  # Using CONCURRENTLY needs to run outside of a transaction,   T  # see https://robots.thoughtbot.com/how-to-create-postgres-indexes-concurrently-in     disable_ddl_transaction!5��