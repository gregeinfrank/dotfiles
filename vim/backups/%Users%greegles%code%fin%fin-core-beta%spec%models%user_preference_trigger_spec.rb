Vim�UnDo� a�"=�r{F�v[	qN�'�L����|P)����   �   g      context 'the tag is not a high effort tag and the entry tag has an in_focus_message_thread_id' do   (         *   (   *   *   '    Xo�=    _�                     �        ����                                                                                                                                                                                                                                                                                                                            �          �           V       XcG    �   �   �              9  describe '#undone_checklist_item_exists_for_object?' do   6    let(:user_preference) { create(:user_preference) }   X    let(:trigger) { create(:user_preference_trigger, user_preference: user_preference) }   4    let(:message_thread) { create(:message_thread) }       L    context 'when the object has checklist items for the user preference' do   V      let(:checklist_item) { create(:checklist_item, checklistable: user_preference) }   w      before { create(:message_thread_checklist_item, message_thread: message_thread, checklist_item: checklist_item) }       8      it 'returns true if there are any undone items' do   [        expect(trigger.undone_checklist_item_exists_for_object?(message_thread)).to eq true   	      end       8      it 'returns false if there are no undone items' do   )        checklist_item.update(done: true)   \        expect(trigger.undone_checklist_item_exists_for_object?(message_thread)).to eq false   	      end       end       a    it 'returns false if the object does not have any checklist items for the user preference' do   .      checklist_item = create(:checklist_item)   l      create(:message_thread_checklist_item, message_thread: message_thread, checklist_item: checklist_item)   Z      expect(trigger.undone_checklist_item_exists_for_object?(message_thread)).to eq false       end     end5�_�                    (        ����                                                                                                                                                                                                                                                                                                                            (          =           V       Xo�8     �   '   (          /      context 'the tag is a high effort tag' do   �        let(:trigger) { create(:user_preference_trigger, trigger: create(:tag, name: "Calendar"), trigger_action: "entry_tag_added", user_preference: create(:user_preference, preference_type: "auto_generated_checklist_item")) }   �        let (:new_entry_tag) { create(:entry_tag, tag: trigger.trigger, entry: create(:entry_v1, user: trigger.user_preference.user)) }       L        it 'creates a new checklist item that is linked to the entry tag' do             expect {   :            trigger.trigger_user_preference(new_entry_tag)   2          }.to change { ChecklistItem.count }.by 1   2          last_checklist_item = ChecklistItem.last   Q          expect(last_checklist_item.checklistable).to eq trigger.user_preference   \          expect(last_checklist_item.text).to eq trigger.user_preference.checklist_item_text   I          expect(last_checklist_item.entry_tag_id).to eq new_entry_tag.id           end       i        it 'does not create a new checklist item if a checklist item already exits for that entry_tag' do   c          create(:checklist_item, entry_tag: new_entry_tag, checklistable: trigger.user_preference)             expect {   :            trigger.trigger_user_preference(new_entry_tag)   1          }.to_not change { ChecklistItem.count }           end   	      end    5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�;     �   '   )   �      g      context 'the tag is not a high effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�;     �   '   )   �      f      context 'he tag is not a high effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�;     �   '   )   �      e      context 'e tag is not a high effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�;     �   '   )   �      d      context ' tag is not a high effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�;     �   '   )   �      c      context 'tag is not a high effort tag and the entry tag has an in_focus_message_thread_id' do5�_�      	              (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      b      context 'ag is not a high effort tag and the entry tag has an in_focus_message_thread_id' do5�_�      
           	   (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      a      context 'g is not a high effort tag and the entry tag has an in_focus_message_thread_id' do5�_�   	              
   (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      `      context ' is not a high effort tag and the entry tag has an in_focus_message_thread_id' do5�_�   
                 (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      _      context 'is not a high effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      ^      context 's not a high effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      ]      context ' not a high effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      \      context 'not a high effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      [      context 'ot a high effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      Z      context 't a high effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      Y      context ' a high effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      X      context 'a high effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      W      context ' high effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      V      context 'high effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      U      context 'igh effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      T      context 'gh effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      S      context 'h effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      R      context ' effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      Q      context 'effort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      P      context 'ffort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      O      context 'fort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      N      context 'ort tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      M      context 'rt tag and the entry tag has an in_focus_message_thread_id' do5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      L      context 't tag and the entry tag has an in_focus_message_thread_id' do5�_�                     (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      K      context ' tag and the entry tag has an in_focus_message_thread_id' do5�_�      !               (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      J      context 'tag and the entry tag has an in_focus_message_thread_id' do5�_�       "           !   (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      I      context 'ag and the entry tag has an in_focus_message_thread_id' do5�_�   !   #           "   (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      H      context 'g and the entry tag has an in_focus_message_thread_id' do5�_�   "   $           #   (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      G      context ' and the entry tag has an in_focus_message_thread_id' do5�_�   #   %           $   (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      F      context 'and the entry tag has an in_focus_message_thread_id' do5�_�   $   &           %   (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�<     �   '   )   �      E      context 'nd the entry tag has an in_focus_message_thread_id' do5�_�   %   '           &   (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�=     �   '   )   �      D      context 'd the entry tag has an in_focus_message_thread_id' do5�_�   &   (           '   (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�=    �   '   )   �      C      context ' the entry tag has an in_focus_message_thread_id' do5�_�   '   )           (   (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�=     �   '   )   �      A      context 'he entry tag has an in_focus_message_thread_id' do5�_�   (   *           )   (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�=     �   '   )   �      @      context 'e entry tag has an in_focus_message_thread_id' do5�_�   )               *   (       ����                                                                                                                                                                                                                                                                                                                            (          (           V       Xo�>     �   '   )   �      ?      context ' entry tag has an in_focus_message_thread_id' do5��