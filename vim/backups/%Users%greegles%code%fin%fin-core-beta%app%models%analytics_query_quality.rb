Vim�UnDo� �#�%���_�1�S��O���t�Z�IF)3+�   �   '       :title => "Poor Threads by Day",   y                          WU�f    _�                    �       ����                                                                                                                                                                                                                                                                                                                                                             WU�b     �   �   �   �      #         name: "Internal Pct Poor",5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             WU�c     �   �   �   �      &         name: "Crowdflower Pct Poor",5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             WU�d     �   �   �   �               name: "User Pct Poor",5�_�                     y       ����                                                                                                                                                                                                                                                                                                                                                             WU�e    �   x   z   �      '       :title => "Poor Threads by Day",5�_�                    y       ����                                                                                                                                                                                                                                                                                                                                                             WU�     �   x   z   �      )       :title => "Missed Threads by Day",5�_�                    �   #    ����                                                                                                                                                                                                                                                                                                                                                             WU�     �   �   �   �      (           end) as crowdflower_pct_miss,5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             WU�"     �   �   �   �      O             case when num_miss_messages_reviewed > 0 or finder_rating in (1,2)5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             WU�(     �   �   �   �      %           end) as internal_pct_miss,5�_�                    �   l    ����                                                                                                                                                                                                                                                                                                                                                             WU�)     �   �   �   �      p         1.00*sum(case when uf.sentiment = 2 then 1 else null end)/(1.00*count(distinct mt.id)) as user_pct_miss5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             WU�,     �   �   �   �      %         name: "Internal Pct Missed",5�_�      	             �   F    ����                                                                                                                                                                                                                                                                                                                                                             WU�0     �   �   �   �      x         data: (r.map{|row| {row["end_date"] =>(100*row["internal_pct_miss"].to_f).round(2) }}.reduce Hash.new, :merge),5�_�      
           	   �   J    ����                                                                                                                                                                                                                                                                                                                                                             WU�3     �   �   �   �      |         data: (r.map{|row| {row["end_date"] => (100*row["crowdflower_pct_miss"].to_f).round(2) }}.reduce Hash.new, :merge),5�_�   	              
   �   C    ����                                                                                                                                                                                                                                                                                                                                                             WU�4     �   �   �   �      u         data: (r.map{|row| {row["end_date"] => (100*row["user_pct_miss"].to_f).round(2) }}.reduce Hash.new, :merge),5�_�   
                 �       ����                                                                                                                                                                                                                                                                                                                                                             WU�5     �   �   �   �      !         name: "User Pct Missed",5�_�                     �        ����                                                                                                                                                                                                                                                                                                                                                             WU�7    �   �   �   �      (         name: "Crowdflower Pct Missed",5�_�                    �   F    ����                                                                                                                                                                                                                                                                                                                                                             WU�.     �   �   �   �      z         data: (r.map{|row| {row["end_date"] =>(100*row["internal_pct_Missed"].to_f).round(2) }}.reduce Hash.new, :merge),5��