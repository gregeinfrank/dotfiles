Vim�UnDo� Eb�|V�K�Г���/~���0^��;3�M�i      C      expect(DashboardColors.white).to eq colors_json_data['white']            0       0   0   0    W 
    _�                             ����                                                                                                                                                                                                                                                                                                                                                             W       �                   �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             W      �                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             W      �                require 'dig'5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             W      �                �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             W      �                require5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             W 	     �                 RSpec.describe Dig do5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             W      �                   �               5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             W      �             �                 �             5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             W      �                 describe 'basic colors' do5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             W !     �                 describe '' do5�_�   
                    &    ����                                                                                                                                                                                                                                                                                                                                                             W ,     �         	    �                   �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             W <     �                 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             W =     �         
            �         	    5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                                                             W L    �         
      ,      expect(DashboardColors.white).toEqual(5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             W Q     �                 5�_�                       4    ����                                                                                                                                                                                                                                                                                                                                                             W R    �         	      4      expect(DashboardColors.white).toEqual('#fff');5�_�                       $    ����                                                                                                                                                                                                                                                                                                                                                             W Z     �         	      3      expect(DashboardColors.white).toEqual('#fff')5�_�                       +    ����                                                                                                                                                                                                                                                                                                                                                             W ]    �         	      2      expect(DashboardColors.white).to eq ('#fff')�         	    5�_�                       )    ����                                                                                                                                                                                                                                                                                                                                                             W h     �         
            �         	    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             W z     �         
            file = 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             W z     �         
            file  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             W |     �         
            file 5�_�                       *    ����                                                                                                                                                                                                                                                                                                                                                             W �    �         
      0      expect(DashboardColors.white).to eq '#fff'5�_�                   	       ����                                                                                                                                                                                                                                                                                                                                                             W 	     �                   �             �   	              �   	      
    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             W 	     �                   debugger;5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             W 	    �                   �             5�_�                             ����                                                                                                                                                                                                                                                                                                                                                V       W 	�     �   
               describe 'nested colors' do           binding.pry     end5�_�      !               
        ����                                                                                                                                                                                                                                                                                                                                                V       W 	�     �   	   
           5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                            
          
          V       W 	�     �                   �         
    5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                                V       W 	�     �               +  describe 'with production colors.json' do5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                                                V       W 	�     �               *    it 'loads the file without failing' do5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                                V       W 	�     �                   let 5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                V       W 	�     �               C      data = JSON.parse(File.read('app/client/config/colors.json'))5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                V       W 	�     �                   let(:colors_json_data) { �             5�_�   &   (           '      S    ����                                                                                                                                                                                                                                                                                                                                                V       W 	�     �               S    let(:colors_json_data) { JSON.parse(File.read('app/client/config/colors.json'))5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                V       W 	�     �                     data = 5�_�   (   *           )           ����                                                                                                                                                                                                                                                                                                                                                V       W 	�     �                 5�_�   )   +           *      *    ����                                                                                                                                                                                                                                                                                                                            
          
          V       W 	�     �         
      7      expect(DashboardColors.white).to eq data['white']5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                            
          
          V       W 	�     �   
          �                   �      
   
    5�_�   +   -           ,           ����                                                                                                                                                                                                                                                                                                                                                V       W 
     �             �             5�_�   ,   .           -           ����                                                                                                                                                                                                                                                                                                                                                V       W 
     �   
              5�_�   -   /           .          ����                                                                                                                                                                                                                                                                                                                                                V       W 
     �   
            C      expect(DashboardColors.white).to eq colors_json_data['white']5�_�   .   0           /      ?    ����                                                                                                                                                                                                                                                                                                                                                V       W 
     �   
            F      expect(DashboardColors.fin.aqua).to eq colors_json_data['white']5�_�   /               0      D    ����                                                                                                                                                                                                                                                                                                                                                V       W 
    �   
            D      expect(DashboardColors.fin.aqua).to eq colors_json_data['fin']5�_�                         ����                                                                                                                                                                                                                                                                                                                                                             W �     �         
      C    f data = JSON.parse(File.read('app/client/config/colors.json'))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             W �     �         
      B     data = JSON.parse(File.read('app/client/config/colors.json'))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             W �     �         
      C    f data = JSON.parse(File.read('app/client/config/colors.json'))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             W �     �         
      C    f data = JSON.parse(File.read('app/client/config/colors.json'))5��