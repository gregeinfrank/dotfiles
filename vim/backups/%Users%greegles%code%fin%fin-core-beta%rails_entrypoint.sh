Vim�UnDo� ���M���fU%�{Qn�ȏ�����P�濋�   
   rails s   
                          XrhQ    _�                             ����                                                                                                                                                                                                                                                                                                                                                  V        XT�}     �      
       �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                       
           V        XT�     �         
      ;DIFF=$(diff package.json /usr/local/lib/node/package.json) 5�_�                           ����                                                                                                                                                                                                                                                                                                                                       
           V        XT��    �         
      6DIFF=$(diff Gemfile /usr/local/lib/node/package.json) 5�_�                           ����                                                                                                                                                                                                                                                                                                                                       
           V        XT��    �         
      "DIFF=$(diff Gemfile /Gemfile_old) 5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                       
           V        XT��     �         
      9    echo "package.json was modified, running npm install"5�_�                       (    ����                                                                                                                                                                                                                                                                                                                                       
           V        XT��     �         
      4    echo "Gemfile was modified, running npm install"5�_�      	                    ����                                                                                                                                                                                                                                                                                                                                       
           V        XT��     �      	   
          echo "[Done] npm install"5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                       
           V        XT��     �         
          npm install5�_�   	              
   
        ����                                                                                                                                                                                                                                                                                                                                       
           V        XT��    �   	              bundle install && rails s5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                       
           V        XT�s    �         
      'DIFF=$(diff Gemfile /Gemfile.original) 5�_�                       0    ����                                                                                                                                                                                                                                                                                                                                       
           V        XT�)     �         
      1DIFF=$(diff Gemfile /usr/local/lib/ruby/Gemfile) 5�_�                           ����                                                                                                                                                                                                                                                                                                                                       
           V        XT�*    �         
      if [ "$DIFF" != "" ] 5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                             XrhQ    �   	             NO_CONTRACTS=true rails s5�_�                   
        ����                                                                                                                                                                                                                                                                                                                                                             Xf�7     �   
              �   
             puma -C config/puma.rb5�_�                     
        ����                                                                                                                                                                                                                                                                                                                            
          
          V       Xf�?   
 �   	             	# rails s5�_�                           ����                                                                                                                                                                                                                                                                                                                                       
           V        XT��     �      	   
          echo "[Done] bundl install"5��