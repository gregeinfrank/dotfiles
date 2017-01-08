Vim�UnDo� 6# (\\8B���܏X`3A�Uf���q�("�_   �                                  W�?    _�                     ,       ����                                                                                                                                                                                                                                                                                                                            g          -          V       W�=d     �   ,   h   �    �   ,   -   �    5�_�                    -       ����                                                                                                                                                                                                                                                                                                                            �          h          V       W�=k     �   ,   .   �      1    "analytics.user_entry_based_information" => {5�_�                    /       ����                                                                                                                                                                                                                                                                                                                            �          h          V       W�=v     �   .   0   �            :desc => "   A        Information that users have told us from their entries.",5�_�                    /       ����                                                                                                                                                                                                                                                                                                                            �          g          V       W�=v     �   .   0   �      J      :desc => " Information that users have told us from their entries.",5�_�                    /       ����                                                                                                                                                                                                                                                                                                                            �          g          V       W�=x     �   .   0   �      I      :desc => "Information that users have told us from their entries.",5�_�                    /       ����                                                                                                                                                                                                                                                                                                                            �          g          V       W�=|     �   .   0   �            :desc => "",5�_�                    2   &    ����                                                                                                                                                                                                                                                                                                                            �          g          V       W�=�     �   1   3   �      K        drop view if exists analytics.user_entry_based_information CASCADE;5�_�      	              3       ����                                                                                                                                                                                                                                                                                                                            �          g          V       W�=�     �   2   4   �      =        create view analytics.user_entry_based_information as5�_�      
           	   5       ����                                                                                                                                                                                                                                                                                                                            6          5          V   B    W�=�     �   4   5                    u.id as user_id,             u.name user_name,5�_�   	              
   5   
    ����                                                                                                                                                                                                                                                                                                                            5          5          V   B    W�=�     �   4   5                    e.created_at,5�_�   
                 7   
    ����                                                                                                                                                                                                                                                                                                                            5          5          V   B    W�=�     �   7   9   �      
          �   7   9   �    5�_�                    9        ����                                                                                                                                                                                                                                                                                                                            9          ;          V   E    W�=�     �   8   9                    e.id as entry_id,   !          e.title as entry_title,             e.url as entry_url5�_�                    9       ����                                                                                                                                                                                                                                                                                                                            9          9          V   E    W�=�     �   8   :   �              from entries e5�_�                    9       ����                                                                                                                                                                                                                                                                                                                            9          9          V   E    W�=�     �   8   :   �              from message_threads e5�_�                    9       ����                                                                                                                                                                                                                                                                                                                            9          9          V   E    W�=�     �   8   :   �              from message_threads m5�_�                    :       ����                                                                                                                                                                                                                                                                                                                            9          9          V   E    W�=�     �   9   ;   �              join entry_tags et5�_�                    :   !    ����                                                                                                                                                                                                                                                                                                                            9          9          V   E    W�=�     �   9   ;   �      #        join message_thread_tags et5�_�                    <   
    ����                                                                                                                                                                                                                                                                                                                            9          9          V   E    W�=�     �   ;   =   �                et.entry_id = e.id5�_�                    <       ����                                                                                                                                                                                                                                                                                                                            9          9          V   E    W�=�     �   ;   =   �                mtt.entry_id = e.id5�_�                    <   "    ����                                                                                                                                                                                                                                                                                                                            9          9          V   E    W�=�     �   ;   =   �      &          mtt.message_thread_id = e.id5�_�                    ?       ����                                                                                                                                                                                                                                                                                                                            9          9          V   E    W�=�     �   >   @   �                t.id = et.tag_id5�_�                    @        ����                                                                                                                                                                                                                                                                                                                            @          B          V       W�>     �   ?   @                  join users u   
        on             u.id = e.user_id5�_�                    @       ����                                                                                                                                                                                                                                                                                                                            A          @          V       W�>+     �   ?   @                  where e.active = true           and et.archived = false5�_�                    @        ����                                                                                                                                                                                                                                                                                                                            @          X          V       W�>8    �   ?   @                  UNION ALL           select             u.id as user_id,             u.name user_name,             e.created_at,             t.id as tag_id,             t.name tag_name,             t.label tag_label,             ke.id as entry_id,   "          ke.title as entry_title,             e.url as entry_url           from entries e           join entries ke            on ke.id = e.kb_entry_id           join entry_tags et   
        on             et.entry_id = ke.id           join tags t   
        on             t.id = et.tag_id           join users u   
        on             u.id = e.user_id           where e.active = true           and et.archived = false5�_�                     -        ����                                                                                                                                                                                                                                                                                                                            -          C          V       W�?    �   ,   -          :    "analytics.user_message_thread_based_information" => {         :dependencies => [],   (      :desc => "Message thread tagging",         :statements => [   	        "   T        drop view if exists analytics.user_message_thread_based_information CASCADE;   F        create view analytics.user_message_thread_based_information as           select             t.id as tag_id,             t.name tag_name,             t.label tag_label,   F          t.is_message_thread_category tag_is_message_thread_category,           from message_threads mt   $        join message_thread_tags mtt   
        on   '          mtt.message_thread_id = mt.id           join tags t   
        on             t.id = mtt.tag_id   	        ;   	        "         ],       },5��