Vim�UnDo� �|(�v��ևn�a:I%oR�+���{X   �   Himport ApiClient from '../../../../app/client/javascripts/lib/ApiClient'      H                       XlQ
    _�                     $        ����                                                                                                                                                                                                                                                                                                                            !          $   	       V       Xg!W     �   $   )   �    �   $   %   �    5�_�                    %       ����                                                                                                                                                                                                                                                                                                                            !          $   	       V       Xg!W     �   $   &   �    �   %   &   �    5�_�                    &       ����                                                                                                                                                                                                                                                                                                                            !          $   	       V       Xg!a     �   %   '   �      H      it ('renders a typeahead and current email address', function () {5�_�                    &        ����                                                                                                                                                                                                                                                                                                                            &   1       *           V   1    Xg!q    �   %   &          B      it ('does not render a typeahead if disabled', function () {   A        expect(this.wrapper.find('Typeahead').length).toEqual(1);   g        expect(this.wrapper.find('a.contact-method').text()).toEqual(this.initialValue.contact_method);   	      });    5�_�                    <       ����                                                                                                                                                                                                                                                                                                                            &   1       &           V   1    Xg!�     �   <   @   �            �   <   >   �    5�_�                    >        ����                                                                                                                                                                                                                                                                                                                            :          ;          V       Xg!�     �   >   A   �    �   >   ?   �    5�_�                    >       ����                                                                                                                                                                                                                                                                                                                            :          ;          V       Xg!�     �   >   @   �              �   >   @   �    5�_�      	              @        ����                                                                                                                                                                                                                                                                                                                            @   =       A   @       V   E    Xg!�    �   ?   @          >        this.wrapper.find('a.editor-state').simulate('click');   @        expect(this.wrapper.state().editingEmail).toEqual(true);5�_�      
           	   >       ����                                                                                                                                                                                                                                                                                                                            @   =       @   @       V   E    Xg!�     �   >   @   �    �   >   ?   �    5�_�   	              
   ?        ����                                                                                                                                                                                                                                                                                                                            ?          ?          V       Xg!�     �   >   @   �      �    this.wrapper = enzyme.shallow(<ContactEmailRecipient onChange={this.onChangeSpy} value={this.initialValue} userId={this.currentUserId} />);5�_�   
                 ?       ����                                                                                                                                                                                                                                                                                                                            ?          ?          V       Xg!�     �   >   @   �      �      this.wrapper = enzyme.shallow(<ContactEmailRecipient onChange={this.onChangeSpy} value={this.initialValue} userId={this.currentUserId} />);5�_�                    ?   Y    ����                                                                                                                                                                                                                                                                                                                            ?          ?          V       Xg!�    �   >   @   �      �        this.wrapper = enzyme.shallow(<ContactEmailRecipient onChange={this.onChangeSpy} value={this.initialValue} userId={this.currentUserId} />);5�_�                    ?   6    ����                                                                                                                                                                                                                                                                                                                            ?          ?          V       Xg!�    �   ?   A   �    �   ?   @   �    5�_�                   $       ����                                                                                                                                                                                                                                                                                                                            ?          ?          V       Xg!�     �   $   (   �            �   $   &   �    5�_�                    &       ����                                                                                                                                                                                                                                                                                                                            B          B          V       Xg!�     �   &   (   �    �   &   '   �    5�_�                    '       ����                                                                                                                                                                                                                                                                                                                            C          C          V       Xg!�     �   &   (   �      A        expect(this.wrapper.find('Typeahead').length).toEqual(1);5�_�                    '   >    ����                                                                                                                                                                                                                                                                                                                            C          C          V       Xg!�     �   &   (   �      A        expect(this.wrapper.find('Typeahead').length).toEqual(2);5�_�                    '   >    ����                                                                                                                                                                                                                                                                                                                            C          C          V       Xg!�     �   &   (   �      A        expect(this.wrapper.find('Typeahead').length).toEqual(1);5�_�                    &   >    ����                                                                                                                                                                                                                                                                                                                            C          C          V       Xg!�    �   &   (   �    �   &   '   �    5�_�                        H    ����                                                                                                                                                                                                                                                                                                                                                V       XlQ
    �         �      Himport ApiClient from '../../../../app/client/javascripts/lib/ApiClient'5�_�                    &       ����                                                                                                                                                                                                                                                                                                                            @          @          V       Xg!�     �   &   '   �    �   &   '   �      �        this.wrapper = enzyme.shallow(<ContactEmailRecipient onChange={this.onChangeSpy} disabled={true} value={this.initialValue} userId={this.currentUserId} />);5��