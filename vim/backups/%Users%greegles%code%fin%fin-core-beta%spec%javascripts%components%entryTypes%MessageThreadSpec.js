Vim�UnDo� :,)��@Ֆ0�#��A�M���Q�n�a��k                     )       )   )   )    X[
�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             XZ�     �                   �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             XZ�     �                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             XZ�     �         )      Ximport Message  from '../../../../app/client/javascripts/components/entryTypes/Message';5�_�                       \    ����                                                                                                                                                                                                                                                                                                                                                             XZ�     �         )      ^import MessageThread  from '../../../../app/client/javascripts/components/entryTypes/Message';5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             XZ�!     �      	   )       describe('Message', function() {5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             XZ�-     �                        created_at: new Date(),5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       XZ�/     �                ,  it('renders the created at', function () {   >    let wrapper = enzyme.shallow(<Message {...this.props} />);   3    let createdAt = wrapper.find('div.created-at');   (    expect(createdAt.length).toEqual(1);   v    expect(createdAt.text()).toEqual('Sent: ' + moment(this.props.target.created_at).format(DateTimeFormats.message));     });    5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                 V       XZ�1     �         !      &  it('renders the text', function () {5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                 V       XZ�3     �         !              text: 'foo bar',5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                 V       XZ�5     �         !              message_thread_id: 345,5�_�   
                    "    ����                                                                                                                                                                                                                                                                                                                                                 V       XZ�<     �         !      >    let wrapper = enzyme.shallow(<Message {...this.props} />);5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                 V       XZ�@     �         !      >    let wrapper = enzyme.shallow(<Message {...this.props} />);5�_�                       (    ����                                                                                                                                                                                                                                                                                                                                                 V       XZ�B     �         !      +    let text = wrapper.find('div.message');5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       XZ�H     �         !      2    let text = wrapper.find('div.message-thread');5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       XZ�I     �         !      #    expect(text.length).toEqual(1);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       XZ�J     �         !      8    expect(text.text()).toEqual(this.props.target.text);5�_�                       3    ����                                                                                                                                                                                                                                                                                                                                                 V       XZ�M    �         !      9    expect(title.text()).toEqual(this.props.target.text);5�_�                       /    ����                                                                                                                                                                                                                                                                                                                                                 V       XZ�Q     �         !      L  it('calls ThreadsActions.setCurrentThread on message click', function () {5�_�                       (    ����                                                                                                                                                                                                                                                                                                                                                 V       XZ�V     �         !      +    let text = wrapper.find('div.message');5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       XZ�X     �         !      2    let text = wrapper.find('div.message-thread');5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       XZ�Z     �         !          let link = text.find('a');5�_�                       S    ����                                                                                                                                                                                                                                                                                                                                                 V       XZ�b    �          !      f    expect(ThreadsActions.setCurrentThread).toHaveBeenCalledWith(this.props.target.message_thread_id);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       X[
]     �         !      '  it('renders the title', function () {5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       X[
g     �         !      3    let title = wrapper.find('div.message-thread');5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       X[
i     �         !      5    let preview = wrapper.find('div.message-thread');5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       X[
|     �         !      :    expect(title.text()).toEqual(this.props.target.title);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       X[
}     �         !      $    expect(title.length).toEqual(1);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       X[
�     �         !      6    expect(title.()).toEqual(this.props.target.title);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       X[
�     �         !      8    expect(preview.()).toEqual(this.props.target.title);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       X[
�     �         !      =    expect(preview.props()).toEqual(this.props.target.title);5�_�                        C    ����                                                                                                                                                                                                                                                                                                                                                 V       X[
�     �         !      K    expect(preview.props().messageThread).toEqual(this.props.target.title);5�_�      !                  C    ����                                                                                                                                                                                                                                                                                                                                                 V       X[
�     �         !    �         !    5�_�       #           !          ����                                                                                                                                                                                                                                                                                                                                                 V       X[
�     �                E    expect(preview.props().messageThread).toEqual(this.props.target);5�_�   !   $   "       #           ����                                                                                                                                                                                                                                                                                                                                                  V        X[
�     �         !    �         !    5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                                      !          V       X[
�     �                3    let title = wrapper.find('div.message-thread');       let link = title.find('a');       link.simulate('click');5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                V       X[
�     �          !    5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                  V       X[
�     �          #          �          "    5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                            !          !          V       X[
�    �                E    expect(preview.props().messageThread).toEqual(this.props.target);5�_�   '   )           (           ����                                                                                                                                                                                                                                                                                                                                                  V       X[
�    �                 5�_�   (               )          ����                                                                                                                                                                                                                                                                                                                                                V       X[
�    �                &    expect(preview.length).toEqual(1);5�_�   !           #   "           ����                                                                                                                                                                                                                                                                                                                                                V       X[
�     �         !      _    let preview = wrapper.find('MessageThreadTitlePreview'); expect(preview.length).toEqual(1);5��