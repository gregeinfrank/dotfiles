Vim�UnDo� ͟?�M@�  ʗ/w�#mJ@��qk��T�
G=  ]   W              sum(message_reviews_recieved_num_poor) message_reviews_recieved_num_poor,  �   /      	       	   	   	    WU��    _�                       %    ����                                                                                                                                                                                                                                                                                                                                                             WU�e     �      ]      P        message_reviews_recieved_num_poor = x.message_reviews_recieved_num_poor,5�_�                      K    ����                                                                                                                                                                                                                                                                                                                                                             WU�h     �      ]      P        message_reviews_recieved_num_miss = x.message_reviews_recieved_num_poor,5�_�                      5    ����                                                                                                                                                                                                                                                                                                                                                             WU�k     �      ]      :          -- remove messages marked as 'not actually poor'5�_�                      X    ����                                                                                                                                                                                                                                                                                                                                                             WU�l     �      ]      ]          and coalesce(issue, -1) <> 11 then 1 else 0 end) message_reviews_recieved_num_poor,5�_�                   �   '    ����                                                                                                                                                                                                                                                                                                                                                             WU�m     �  �  �  ]      R          message_reviews_recieved_num_poor = x.message_reviews_recieved_num_poor,5�_�                   �   M    ����                                                                                                                                                                                                                                                                                                                                                             WU�n     �  �  �  ]      R          message_reviews_recieved_num_miss = x.message_reviews_recieved_num_poor,5�_�                   �   /    ����                                                                                                                                                                                                                                                                                                                                                             WU�o     �  �  �  ]      W              sum(message_reviews_recieved_num_poor) message_reviews_recieved_num_poor,5�_�      	             �   R    ����                                                                                                                                                                                                                                                                                                                                                             WU�p    �  �  �  ]      W              sum(message_reviews_recieved_num_miss) message_reviews_recieved_num_poor,5�_�                  	          ����                                                                                                                                                                                                                                                                                                                                                             WU��    �  �  �          W              sum(message_reviews_recieved_num_miss) message_reviews_recieved_num_miss,�  �  �          R          message_reviews_recieved_num_miss = x.message_reviews_recieved_num_miss,�              ]          and coalesce(issue, -1) <> 11 then 1 else 0 end) message_reviews_recieved_num_miss,�              P        message_reviews_recieved_num_miss = x.message_reviews_recieved_num_miss,5��