Vim�UnDo� )P�T�x����r�����x�YƗQ5 ����                    '       '   '   '    Xn��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             Xn�1     �                   �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Xn�1     �                  5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             Xn�6     �               [import { Boolean } from '../../../../app/client/javascripts/components/entryTypes/Boolean';5�_�                       Y    ����                                                                                                                                                                                                                                                                                                                                                             Xn�:     �               bimport { CurrencyAmount } from '../../../../app/client/javascripts/components/entryTypes/Boolean';5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             Xn�:     �               !describe('Boolean', function () {5�_�                       &    ����                                                                                                                                                                                                                                                                                                                                                             Xn�;     �      	         Z      const wrapper = enzyme.shallow(<Boolean value={true} disabled={false} name='foo'/>);5�_�                       &    ����                                                                                                                                                                                                                                                                                                                                                             Xn�<    �               o      const wrapper = enzyme.shallow(<Boolean value={true} disabled={false} name='foo' onChange={onChange} />);5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             Xn�1     �               3    it('renders a RadioButtonToggle', function () {5�_�      
           	      <    ����                                                                                                                                                                                                                                                                                                                                                             Xn�9     �      	         a      const wrapper = enzyme.shallow(<CurrencyAmount value={true} disabled={false} name='foo'/>);5�_�   	              
      S    ����                                                                                                                                                                                                                                                                                                                                                             Xn�E     �      	         a      const wrapper = enzyme.shallow(<CurrencyAmount value={1.32} disabled={false} name='foo'/>);5�_�   
                 	   (    ����                                                                                                                                                                                                                                                                                                                                                             Xn�J     �      
         <      const radioButton = wrapper.find('RadioButtonToggle');5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             Xn�N     �      
         1      const radioButton = wrapper.find('InputV');5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             Xn�Q     �   	            ,      expect(radioButton.length).toEqual(1);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Xn�Q     �   
            6      expect(radioButton.props().name).toEqual('foo');5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Xn�R     �               :      expect(radioButton.props().disabled).toEqual(false);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Xn�R     �               6      expect(radioButton.props().value).toEqual(true);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Xn�S     �               3      expect(radioButton.props().options).toEqual([5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       Xn�Z     �                5      expect(inputV.props().disabled).toEqual(false);   1      expect(inputV.props().value).toEqual(true);   .      expect(inputV.props().options).toEqual([   %        {value: true, label: 'True'},   '        {value: false, label: 'False'},   	      ]);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       Xn�_     �   
            1      expect(inputV.props().name).toEqual('foo');5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                V       Xn�c     �   
            5      expect(inputV.props().disabled).toEqual('foo');5�_�                       2    ����                                                                                                                                                                                                                                                                                                                                                V       Xn�d     �             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       Xn�i     �               5      expect(inputV.props().disabled).toEqual(false);5�_�                       *    ����                                                                                                                                                                                                                                                                                                                                                V       Xn�j     �               1      expect(inputV.props().type).toEqual(false);5�_�                       1    ����                                                                                                                                                                                                                                                                                                                                                V       Xn�l     �             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       Xn�n     �               4      expect(inputV.props().type).toEqual('number');5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       Xn�t     �               ;      expect(inputV.props().placeholder).toEqual('number');5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                                                V       Xn�v     �               5      expect(inputV.props().value).toEqual('number');5�_�                       /    ����                                                                                                                                                                                                                                                                                                                                                V       Xn�y     �             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       Xn��     �               3      expect(inputV.props().value).toEqual('1.32');5�_�      !                  0    ����                                                                                                                                                                                                                                                                                                                                                V       Xn��    �               8      expect(inputV.props().isCurrency).toEqual('1.32');5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                                V       Xn��     �               B    it('calls onChange on RadioButtonToggle change', function () {5�_�   !   #           "      7    ����                                                                                                                                                                                                                                                                                                                            
   &          7       V   7    Xn��     �             �             5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                                                V       Xn��     �                5      const onChange = jasmine.createSpy('onChange');   v      const wrapper = enzyme.shallow(<CurrencyAmount value={true} disabled={false} name='foo' onChange={onChange} />);   <      const radioButton = wrapper.find('RadioButtonToggle');   ,      expect(radioButton.length).toEqual(1);   *      radioButton.props().onSelect(false);   9      expect(onChange).toHaveBeenCalledWith(false, true);5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                                V       Xn��     �             �             5�_�   $   &           %      5    ����                                                                                                                                                                                                                                                                                                                                                V       Xn��     �               W      const wrapper = enzyme.shallow(<CurrencyAmount value={1.32} disabled={false} />);5�_�   %   '           &      G    ����                                                                                                                                                                                                                                                                                                                                                V       Xn��     �                     �             5�_�   &               '      3    ����                                                                                                                                                                                                                                                                                                                                                V       Xn��    �                     �             5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                                                V       Xn�|     �             �               1      expect(inputV.props().value).toEqual(1.32);5�_�                            ����                                                                                                                                                                                                                                                                                                                                         	       V       Xn�T     �              5��