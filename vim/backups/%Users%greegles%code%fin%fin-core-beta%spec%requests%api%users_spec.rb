Vim�UnDo�  %�nT�K��Q+ͨ��@p�@#�f�B�c�                                    X��    _�                     �       ����                                                                                                                                                                                                                                                                                                                                                             X�^�    �   �   �  7      �        expect(InternalCalendarEventEntry).to receive(:retrieve_internal_calendar_events).with(user2.id, Time.parse(params[:start_time].to_s), Time.parse(params[:end_time].to_s))5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �          �           V       X�Ef    �   �   �       
        describe '#knowlege_base' do   P      it 'responds with the knowledge base user with email team@fin.ventures' do   S        # KB User is created once globally in the rails_helper before(:suite) block   9        get "/api/users/knowledge_base", {}, auth_headers   *        kb_user = JSON.parse response.body   %        expect(kb_user['id']).to eq 1   :        expect(kb_user['email']).to eq 'team@fin.ventures'   	      end       end    5�_�                    B       ����                                                                                                                                                                                                                                                                                                                                                             X��     �   A   B          @      allow(User).to receive(:create_collaborative_email_thread)5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �          �           V       X��    �   �   �          4    describe '#create_collaborative_email_thread' do   @      it 'creates a scheduled email and calls send now on it' do   O        entry = create(:entry_v1, user_id: user2.id, title: 'Trip to Kingston')           params = {             user_id: user2.id,             entry_id: entry.id,             to: user2.email,             subject: 'foo',             body: 'more foo',             csrf_token: TEST_CSRF   	        }   C        expect(User).to receive(:create_collaborative_email_thread)   Q        post '/api/users/create_collaborative_email_thread', params, auth_headers   	      end       end    5�_�                    A       ����                                                                                                                                                                                                                                                                                                                                                             X��     �   @   A          N      allow(User).to receive(:search_related_users_to_entry).and_call_original5�_�                     |        ����                                                                                                                                                                                                                                                                                                                            |          �           V       X��    �   {   |          )    describe '#related_users_to_entry' do   4      it 'searches for users related to an entry' do           kb = create(:kb_entry)   c        entry = create(:entry_v1, user_id: user2.id, title: 'Trip to Kingston', kb_entry_id: kb.id)           params = {             entry_id: entry.id,             csrf_token: TEST_CSRF   	        }   ?        expect(User).to receive(:search_related_users_to_entry)   F        post '/api/users/related_users_to_entry', params, auth_headers   %        expect(response.body).to eq [             {               id: user2.id.to_s,               name: user2.name,               email: user2.email,   /            account_state: user2.account_state,   J            search_result_context: "user related to entry id:#{entry.id}",   %            employee: user2.employee,   4            collaborative_conversations_config: true             }].to_json   	      end       end    5��