Vim�UnDo� ��FޠG7Ô���ux��/��?���@����                    +       +   +   +    X��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             X��     �                   �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X��    �                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        X�     �             	   \  ThreadRequest.where(delayed_target_speed: nil).find_in_batches(batch_size: 500) do |group|       puts "On group #{i}"       group.each do |tr|   m      dts = MessageThreadSorter.new.delayed_target_speed(tr.hard_deadline, tr.time_estimate, tr.target_speed)   E      tr.update_attributes(delayed_target_speed: dts) unless dts.nil?       end       sleep 2   
    i += 1     end5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        X�     �                  i = 05�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        X�     �             �                 �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        X��    �                     �         
    �         	       5�_�                       2    ����                                                                                                                                                                                                                                                                                                                                                  V        X��     �               2    unless has_proxy_message_relationship_already?5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                  V        X��    �   	          �                �      	       5�_�      
           	   
        ����                                                                                                                                                                                                                                                                                                                                                  V        X�     �   	             5�_�   	              
   
        ����                                                                                                                                                                                                                                                                                                                                                  V        X�     �   
          �   
          5�_�   
                 
        ����                                                                                                                                                                                                                                                                                                                                                  V        X�     �   	   
           5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                  V        X�     �   	            @    harmonized_entry = proxy_contact.associated_harmonized_entry5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                  V        X�     �   	            ?   harmonized_entry = proxy_contact.associated_harmonized_entry5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                  V        X�     �   	              �   	          5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        X�     �             �                 �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        X�     �                 �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        X�"     �                5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                                                  V        X�9     �               ,    fin_fin_thing = harmonized_entry.find_th5�_�                       V    ����                                                                                                                                                                                                                                                                                                                                                  V        X�L     �             �                   �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        X�[     �                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        X��    �                5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                  V        X��     �               b      has_relationship = fin_fin_thing.relationship_target('Contact::received_proxy_message_from')5�_�                       b    ����                                                                                                                                                                                                                                                                                                                                                  V        X��     �               b      has_relationship = fin_fin_thing.relationships_named('Contact::received_proxy_message_from')5�_�                       k    ����                                                                                                                                                                                                                                                                                                                                                  V        X��    �               l      has_relationship = fin_fin_thing.relationships_named('Contact::received_proxy_message_from').count > 95�_�                           ����                                                                                                                                                                                                                                                                                                                                      	   :       V   k    X��     �   
            >  harmonized_entry = proxy_contact.associated_harmonized_entry5�_�                       c    ����                                                                                                                                                                                                                                                                                                                            	   "                 V   "    X��   
 �               l      has_relationship = fin_fin_thing.relationships_named('Contact::received_proxy_message_from').count > 05�_�      !                       ����                                                                                                                                                                                                                                                                                                                                                V   :    X��     �                     �             5�_�       "           !      1    ����                                                                                                                                                                                                                                                                                                                                                V   :    X��     �               F      Rails.logger.info("Setting relationship on #{proxy_message.id}")5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                                V   :    X��     �                X      Rails.logger.info("Setting relationship on proxy message id: #{proxy_message.id}")5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                                                V   :    X��    �             �             5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                                                             X��    �                   �             5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                V       X��     �                   has_relationship = false5�_�   %   (           &          ����                                                                                                                                                                                                                                                                                                                                                V       X��     �                   has_relationship = true 5�_�   &   )   '       (          ����                                                                                                                                                                                                                                                                                                                                                V       X��     �               �    has_relationship = true  # no relationship exists, but return true because we don't want to attempt to call set_relationship_on_fin_fin_thing if we know there is no harmonized entry5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                                V       X��     �             5�_�   )   +           *           ����                                                                                                                                                                                                                                                                                                                                                V       X��     �                �             5�_�   *               +           ����                                                                                                                                                                                                                                                                                                                               �          �       V   �    X��    �               �  # no relationship exists, but return true because we don't want to attempt to call set_relationship_on_fin_fin_thing if we know there is no harmonized entry5�_�   &           (   '           ����                                                                                                                                                                                                                                                                                                                                                V       X��     �               �    has_relationship = true  # nto relationship exists, but return true because we don't want to attempt to call set_relationship_on_fin_fin_thing if we know there is no harmonized entry5�_�                      '    ����                                                                                                                                                                                                                                                                                                                            	   "                 V   "    X�6     �               k      has_relationship = fin_fin_thing.find_by_attributes('Contact::received_proxy_message_from').count > 05�_�                       `    ����                                                                                                                                                                                                                                                                                                                            	   "                 V   "    X�>     �               �      has_relationship = fin_fin_thing.find_by_attributes('Contact::received_proxy_message_from': proxy_message.proxy_contact.user).count > 05�_�                       �    ����                                                                                                                                                                                                                                                                                                                            	   "                 V   "    X�C    �               �      has_relationship = fin_fin_thing.find_by_attributes('Contact::received_proxy_message_from': proxy_message.proxy_contact.user)5�_�                       '    ����                                                                                                                                                                                                                                                                                                                            	   "                 V   "    X�S     �               �      has_relationship = fin_fin_thing.where_by_attributes('Contact::received_proxy_message_from': proxy_message.proxy_contact.user)5�_�                        �    ����                                                                                                                                                                                                                                                                                                                                      	   :       V   �    X�Z   	 �               �      has_relationship = fin_fin_thing.where_by_attributes('Contact::received_proxy_message_from': proxy_message.proxy_contact.user).count > 05��