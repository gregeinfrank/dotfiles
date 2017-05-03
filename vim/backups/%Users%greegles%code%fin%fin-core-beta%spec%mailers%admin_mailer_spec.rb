Vim�UnDo� �RGʖ��:��N�=u�I�{5��`�[��%��   �                                   X��L    _�                     _        ����                                                                                                                                                                                                                                                                                                                            _          �           V       X��H    �   ^   _       &   A  describe 'sending scheduled message edit notification email' do       with_versioning do   %      let!(:agent) { create(:agent) }   &      let!(:agent2) { create(:agent) }   #      let!(:user) { create(:user) }   4      let!(:entry) { create(:entry_v1, user: user) }   N      let!(:entry_tag) { create(:entry_tag, entry: entry, tag: create(:tag)) }   �      let!(:scheduled_message) { create(:scheduled_message, agent: agent, text: "Some new text", previous_text: "The original text", user: user, entry_tag: entry_tag)}         let!(:mail) {   �        AdminMailer.send_scheduled_message_edited_email(scheduled_message, previous_text: scheduled_message.previous_text, current_user: agent2)         }       0      it 'sends an email to the default list' do   9        expect(mail.to).to eq [agent2.email, agent.email]   	      end       4      it 'sends an email to any passed-in emails' do   �        mail = AdminMailer.send_scheduled_message_edited_email(scheduled_message, previous_text: scheduled_message.previous_text, current_user: agent2, additional_emails: ['agent3@fin.dance'])   M        expect(mail.to).to eq [agent2.email, agent.email, 'agent3@fin.dance']   	      end       *      it 'contains a link to the entry' do   �        expected_url = agent_user_dashboard_url(scheduled_message.user, host: ROOT_DOMAIN) + "?entry_id=#{scheduled_message.entry_tag.entry_id}"   2        expect(mail.body).to include(expected_url)   	      end       ;      it 'contains a link to the dashboard for the user' do   Z        expected_url = agent_user_dashboard_url(scheduled_message.user, host: ROOT_DOMAIN)   2        expect(mail.body).to include(expected_url)   	      end       0      it 'contains the previous and new text' do   E        expect(mail.body).to include(scheduled_message.previous_text)   <        expect(mail.body).to include(scheduled_message.text)   	      end       end     end    5�_�                     ^        ����                                                                                                                                                                                                                                                                                                                            _          _           V       X��K    �   ]   ^           5��