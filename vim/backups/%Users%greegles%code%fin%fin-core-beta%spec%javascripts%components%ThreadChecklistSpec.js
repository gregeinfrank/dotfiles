Vim�UnDo� ꄱ��\�y���6�*�̀�옌Do��ؙ­�   [         callback();   W         !       !   !   !    X�,�    _�                            ����                                                                                                                                                                                                                                                                                                                                                             W�^    �                 >    expect(checklist.prop('threadId')).toEqual(this.threadId);5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X���    �                 5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                             X���     �         S      ,    let checklist = wrapper.find(Checklist);�         S    5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                             X���     �         S      .    let checklist = wrapper.find('Checklist');�         S    5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                             X���    �         S      0    let checklist = wrapper.find('(Checklist)');5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             X���    �                Pvar Checklist = require('../../../app/client/javascripts/components/Checklist');5�_�      
           	   4   0    ����                                                                                                                                                                                                                                                                                                                                                             X�mb     �   3   5   R      3      spyOn(ThreadsActions, 'deleteChecklistItem');5�_�   	              
   9   /    ����                                                                                                                                                                                                                                                                                                                                                             X�md    �   8   :   R      p      expect(ThreadsActions.deleteChecklistItem).toHaveBeenCalledWith(this.threadId, this.checklistItems[0].id);5�_�   
                 9   V    ����                                                                                                                                                                                                                                                                                                                                                             X�mu     �   8   :   R      q      expect(ThreadsActions.deleteChecklistItems).toHaveBeenCalledWith(this.threadId, this.checklistItems[0].id);5�_�                    9   p    ����                                                                                                                                                                                                                                                                                                                                                             X�mx    �   8   :   R      r      expect(ThreadsActions.deleteChecklistItems).toHaveBeenCalledWith(this.threadId, [this.checklistItems[0].id);5�_�                    8   =    ����                                                                                                                                                                                                                                                                                                                                                             X�m�     �   7   9   R      ?      wrapper.instance()._handleDelete(this.checklistItems[0]);5�_�                    8   '    ����                                                                                                                                                                                                                                                                                                                                                             X�m�    �   7   9   R      C      wrapper.instance()._handleDelete(this.checklistItems[0].id]);5�_�                    O   W    ����                                                                                                                                                                                                                                                                                                                                                             X�+�     �   N   P   R      Y      expect(ThreadsActions.addChecklistItem).toHaveBeenCalledWith(this.threadId, 'foo');5�_�                    O   n    ����                                                                                                                                                                                                                                                                                                                                                             X�+�    �   N   P   R      q      expect(ThreadsActions.addChecklistItem).toHaveBeenCalledWith(this.threadId, 'foo', jasmine.any(Function)();5�_�                    P       ����                                                                                                                                                                                                                                                                                                                                                             X�+�     �   P   T   S          �   P   R   R    5�_�                    R        ����                                                                                                                                                                                                                                                                                                                                                             X�,7     �   R   T   U    5�_�                    R       ����                                                                                                                                                                                                                                                                                                                                                             X�,;     �   R   T   V    �   R   S   V    5�_�                    S       ����                                                                                                                                                                                                                                                                                                                                                             X�,;     �   S   U   X            �   S   U   W    5�_�                    U        ����                                                                                                                                                                                                                                                                                                                                                             X�,B   	 �   T   U           5�_�                    R       ����                                                                                                                                                                                                                                                                                                                                                             X�,H     �   Q   S   W      .    it('sets state.saving=true', function () {5�_�                    T       ����                                                                                                                                                                                                                                                                                                                                                             X�,[     �   S   U   W      1      expect(wrapper.state.saving).toEqual(true);5�_�                    T       ����                                                                                                                                                                                                                                                                                                                                                             X�,\     �   S   U   W      1      expect(wrapper.state(saving).toEqual(true);5�_�                    T   "    ����                                                                                                                                                                                                                                                                                                                                                             X�,^   
 �   S   U   W      2      expect(wrapper.state('saving).toEqual(true);5�_�                    R   %    ����                                                                                                                                                                                                                                                                                                                                                             X�,d    �   Q   S   W      5    it('sets state.saving=true until ', function () {5�_�                    R   6    ����                                                                                                                                                                                                                                                                                                                                                             X�,p     �   R   T   X            �   R   T   W    5�_�                    S       ����                                                                                                                                                                                                                                                                                                                                                             X�,�     �   S   U   Y            �   S   U   X    5�_�                    T   2    ����                                                                                                                                                                                                                                                                                                                                                             X�,�    �   S   U   Y      2      ThreadsActions.addChecklistItem.and.callFake5�_�                    V   3    ����                                                                                                                                                                                                                                                                                                                                                             X�,�     �   V   X   Z            �   V   X   Y    5�_�                     W       ����                                                                                                                                                                                                                                                                                                                                                             X�,�     �   W   Y   Z    �   W   X   Z    5�_�      !               X   .    ����                                                                                                                                                                                                                                                                                                                                                             X�,�    �   W   Y   [      4      expect(wrapper.state('saving')).toEqual(true);5�_�                   !   W       ����                                                                                                                                                                                                                                                                                                                                                             X�,�    �   V   X   [            callback();5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             W�V     �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             W�X     �               5��