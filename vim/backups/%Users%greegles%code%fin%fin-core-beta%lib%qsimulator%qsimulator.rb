Vim�UnDo� �w;�>�wF��֔r2Q�~b�<3m3�g��   �           #      
          
   
    W�    _�                     '        ����                                                                                                                                                                                                                                                                                                                                                             W�[�     �   &   (              @max_depth = 05�_�                    0       ����                                                                                                                                                                                                                                                                                                                                                             W�]�     �   0   2   �              �   0   2   �    5�_�                    2       ����                                                                                                                                                                                                                                                                                                                                                             W�]�    �   1   2          '        .where("time_estimate != null")5�_�                    .        ����                                                                                                                                                                                                                                                                                                                            4          -          V       W�]�    �   2   4                  .order(:created_at)�   1   3          "        .includes(:message_thread)�   0   2          &        .where.not(time_estimate: nil)�   /   1          +        .where("started_at <= ?", end_time)�   .   0          -        .where("started_at >= ?", start_time)�   -   /                ThreadRequest5�_�                    /        ����                                                                                                                                                                                                                                                                                                                            /          3          V       W�]�    �   .   4   �      )    .where("started_at >= ?", start_time)   '    .where("started_at <= ?", end_time)   "    .where.not(time_estimate: nil)       .includes(:message_thread)       .order(:created_at)5�_�      	              �        ����                                                                                                                                                                                                                                                                                                                            �          �          V       W䃌    �   �   �   �          �   �   �   �    5�_�      
           	   �   #    ����                                                                                                                                                                                                                                                                                                                            �          �   #       V   *    W�    �   �   �   �      2      [:num_on_time_5_min, on_time_15_min.length],5�_�   	               
   �       ����                                                                                                                                                                                                                                                                                                                                                             W�    �   �   �          +    puts "Finished thread request #{tr.id}"5��