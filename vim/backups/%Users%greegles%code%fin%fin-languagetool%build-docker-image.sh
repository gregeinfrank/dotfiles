Vim�UnDo� ��@Bʒo�x @���*(�E��9
�P<���   	   ydocker build -f docker/languagetool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .            '      '   '       XG6    _�                             ����                                                                                                                                                                                                                                                                                                                                                             XG5	     �                  �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             XG5     �                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             XG5     �               mdocker build -f docker/fin-core/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-core:$DATE" .5�_�                       d    ����                                                                                                                                                                                                                                                                                                                                                             XG5     �               qdocker build -f docker/languagetool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-core:$DATE" .5�_�                       >    ����                                                                                                                                                                                                                                                                                                                                                             XG5(     �               Idocker push "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-core:$DATE"5�_�                            ����                                                                                                                                                                                                                                                                                                                               I       	   H       V   I    XG5,    �                �docker tag "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-core:$DATE" 147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-core:latest   Hdocker push 147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-core:latest5�_�                       >    ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG5/    �      	   	      Iecho "Pushed 147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-core:$DATE"5�_�      	                 I    ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG5�     �               	   #!/bin/bash       DATE=`date +%Y%m%d`       aws ecr get-login | bash   ydocker build -f docker/languagetool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .   Qdocker push "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE"   Qecho "Pushed 147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE"    5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      ydocker build -f docker/languagetool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      xdocker build -f ocker/languagetool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�   
                        ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      wdocker build -f cker/languagetool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      vdocker build -f ker/languagetool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      udocker build -f er/languagetool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      tdocker build -f r/languagetool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      sdocker build -f /languagetool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      rdocker build -f languagetool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      qdocker build -f anguagetool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      pdocker build -f nguagetool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      odocker build -f guagetool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      ndocker build -f uagetool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      mdocker build -f agetool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      ldocker build -f getool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      kdocker build -f etool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      jdocker build -f tool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      idocker build -f ool/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      hdocker build -f ol/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      gdocker build -f l/Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6    �         	      fdocker build -f /Dockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      ddocker build -f ockerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                           ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      cdocker build -f ckerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�                            ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      bdocker build -f kerfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�      !                      ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      adocker build -f erfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      `docker build -f rfile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      _docker build -f file -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      ^docker build -f ile -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      ]docker build -f le -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�   $   '           %          ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      \docker build -f e -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�   %       &       '          ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      \docker build -f . -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5�_�   %           '   &          ����                                                                                                                                                                                                                                                                                                                               I          H       V   I    XG6     �         	      [docker build -f  -t "147324133701.dkr.ecr.us-east-1.amazonaws.com/fin-languagetool:$DATE" .5��