Vim�UnDo� cd�c�UQh�.�)��S�\�b��q��K      �     .attribute('subject', 'string', attribute_metadata: {stored_as_singular: true, displayed_as_singular: true, elasticsearch_wrap_as_claim: true}, description: 'Email subject')                             XY�9    _�                             ����                                                                                                                                                                                                                                                                                                                                                             XXz�     �             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             XXz�     �                    # Set up rails types5�_�                       3    ����                                                                                                                                                                                                                                                                                                                                                             XXz�     �         	      Y    EntrySchema::TypeBuilder.create('Rails::Message', true, description: 'A Fin Message')5�_�                       ]    ����                                                                                                                                                                                                                                                                                                                                                             XXz�    �         	      _    EntrySchema::TypeBuilder.create('Rails::MessageThread', true, description: 'A Fin Message')5�_�                       c    ����                                                                                                                                                                                                                                                                                                                                                             XX{�     �         	    �         	    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             XX{�     �                     'TriggeredEmail',5�_�                       2    ����                                                                                                                                                                                                                                                                                                                                                             XX{�     �               D      included_type_ids: [EntryTypeSchema.cnamed('Triggerable').id],5�_�      	                 9    ����                                                                                                                                                                                                                                                                                                                                                             XX{�     �             �             5�_�      
           	   	       ����                                                                                                                                                                                                                                                                                                                                                             XX{�     �      
         3      description: 'An email triggered to be sent',5�_�   	              
   	   /    ����                                                                                                                                                                                                                                                                                                                                                             XX{�     �      
         :      description: 'Any entry created from the dashboard',5�_�   
                 
       ����                                                                                                                                                                                                                                                                                                                                                             XX{�     �   	   
          5      type_metadata: {'requires_user_source' => true}5�_�                    	   >    ����                                                                                                                                                                                                                                                                                                                                                             XX{�    �      
         >      description: 'Any entry created from the Fin dashboard',5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             XX|x     �   
          �   
          5�_�                          ����                                                                                                                                                                                                                                                                                                                                                             XX|{     �   
            �     .attribute('subject', 'string', attribute_metadata: {stored_as_singular: true, displayed_as_singular: true, elasticsearch_wrap_as_claim: true}, description: 'Email subject')5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                             XX|     �   
            �     .attribute('origin_thread', 'string', attribute_metadata: {stored_as_singular: true, displayed_as_singular: true, elasticsearch_wrap_as_claim: true}, description: 'Email subject')5�_�                       N    ����                                                                                                                                                                                                                                                                                                                                                             XX|�     �   
            �     .attribute('origin_thread', 'Rails::MessageThread', attribute_metadata: {stored_as_singular: true, displayed_as_singular: true, elasticsearch_wrap_as_claim: true}, description: 'Email subject')5�_�                       9    ����                                                                                                                                                                                                                                                                                                                                                             XX|�     �   
            n     .attribute('origin_thread', 'Rails::MessageThread', attribute_metadata: {}, description: 'Email subject')5�_�                       9    ����                                                                                                                                                                                                                                                                                                                                                             XX|�     �   
            W     .attribute('origin_thread', 'Rails::MessageThread',  description: 'Email subject')5�_�                       G    ����                                                                                                                                                                                                                                                                                                                                                             XX|�    �   
            V     .attribute('origin_thread', 'Rails::MessageThread', description: 'Email subject')5�_�                       8    ����                                                                                                                                                                                                                                                                                                                                                             XY�8    �   
            |    .attribute('origin_thread', 'Rails::MessageThread', description: 'The thread that was locked when an entry was created')5�_�                            ����                                                                                                                                                                                                                                                                                                                               y          y       V   y    XX|�     �   
            ~      .attribute('origin_thread', 'Rails::MessageThread', description: 'The thread that was locked when an entry was created')5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             XX|z     �   
            �     .attribute('subject 'string', attribute_metadata: {stored_as_singular: true, displayed_as_singular: true, elasticsearch_wrap_as_claim: true}, description: 'Email subject')5��