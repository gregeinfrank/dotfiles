Vim�UnDo� ���ҥz��9[	l�f�`x��ۈA�?��Ԭ   u              	                    X]    _�       
          	   i        ����                                                                                                                                                                                                                                                                                                                            b          f          V       Wd��     �   h   j   t        def self.write_to_slack(body,   3    channel = Slack::Notifier::NEW_MESSAGE_CHANNEL,5�_�   	              
   i       ����                                                                                                                                                                                                                                                                                                                            b          f          V       Wd��     �   h   j   s      O  def self.write_to_slack(body, channel = Slack::Notifier::NEW_MESSAGE_CHANNEL,       username = "mattknox",5�_�   
                 i   O    ����                                                                                                                                                                                                                                                                                                                            b          f          V       Wd��     �   h   j   r      f  def self.write_to_slack(body, channel = Slack::Notifier::NEW_MESSAGE_CHANNEL, username = "mattknox",   Q    icon_url = "http://www.gravatar.com/avatar/91aef80c33fbc0f67f33c0bf0839e149")5�_�                    i   '    ����                                                                                                                                                                                                                                                                                                                            b          f          V       Wd��    �   h   j   q      �  def self.write_to_slack(body, channel = Slack::Notifier::NEW_MESSAGE_CHANNEL, username = "mattknox", icon_url = "http://www.gravatar.com/avatar/91aef80c33fbc0f67f33c0bf0839e149")5�_�                    i   1    ����                                                                                                                                                                                                                                                                                                                            b          f          V       Wd��     �   h   j   q      �  def self.write_to_slack(body, channel, username = "mattknox", icon_url = "http://www.gravatar.com/avatar/91aef80c33fbc0f67f33c0bf0839e149")5�_�                    i   2    ����                                                                                                                                                                                                                                                                                                                            b          f          V       Wd��     �   h   j   q      �  def self.write_to_slack(body, channel, username= "mattknox", icon_url = "http://www.gravatar.com/avatar/91aef80c33fbc0f67f33c0bf0839e149")5�_�                    i   F    ����                                                                                                                                                                                                                                                                                                                            b          f          V       Wd��     �   h   j   q      �  def self.write_to_slack(body, channel, username="mattknox", icon_url = "http://www.gravatar.com/avatar/91aef80c33fbc0f67f33c0bf0839e149")5�_�                    i   G    ����                                                                                                                                                                                                                                                                                                                            b          f          V       Wd��    �   h   j   q      �  def self.write_to_slack(body, channel, username="mattknox", icon_url= "http://www.gravatar.com/avatar/91aef80c33fbc0f67f33c0bf0839e149")5�_�                   ^       ����                                                                                                                                                                                                                                                                                                                            b          f          V       Wd��     �   ]   _   q      a    "#{message.text}\nmessage#{message.id} in #{self.thread_link_footer(message.message_thread)}"5�_�                    ^       ����                                                                                                                                                                                                                                                                                                                            b          f          V       Wd��     �   ]   _   q      d    "#{message.text}\nmessage \##{message.id} in #{self.thread_link_footer(message.message_thread)}"5�_�                    ^       ����                                                                                                                                                                                                                                                                                                                            b          f          V       Wd��   
 �   ]   _   q      b    "message.text}\nmessage \##{message.id} in #{self.thread_link_footer(message.message_thread)}"5�_�                    _       ����                                                                                                                                                                                                                                                                                                                                                             XN     �   _   b   r        �   _   a   q    5�_�                    a       ����                                                                                                                                                                                                                                                                                                                                                             X^    �   a   c   u          �   a   c   t    �   `   c   s        def self.5�_�                    b   :    ����                                                                                                                                                                                                                                                                                                                                                             X�     �   a   c   u      �    write_to_slack(message, '#prod-dev', username='test', icon_url='https://s.gravatar.com/avatar/85b89f38f0f15a89e56c1cbcb2707421')5�_�                    b   )    ����                                                                                                                                                                                                                                                                                                                                                             X�    �   a   c   u      {    write_to_slack(message, '#prod-dev', username='test', 'https://s.gravatar.com/avatar/85b89f38f0f15a89e56c1cbcb2707421')5�_�                    b   *    ����                                                                                                                                                                                                                                                                                                                                                             X'    �   a   c   u      r    write_to_slack(message, '#prod-dev', 'test', 'https://s.gravatar.com/avatar/85b89f38f0f15a89e56c1cbcb2707421')5�_�                    b   ;    ����                                                                                                                                                                                                                                                                                                                                                             X�    �   a   c   u      {    write_to_slack(message, '#prod-dev', 'Fin Finderson', 'https://s.gravatar.com/avatar/85b89f38f0f15a89e56c1cbcb2707421')5�_�                    b       ����                                                                                                                                                                                                                                                                                                                                                             Xa     �   a   c   u      �    write_to_slack(message, '#prod-dev', 'Fin Finderson', 'http://2.bp.blogspot.com/-d94FNkb_Zxc/Tij3o8NE77I/AAAAAAAAAdw/DeZlPhbh2uM/s1600/fin.png')5�_�                    b       ����                                                                                                                                                                                                                                                                                                                                                             Xd    �   a   c   u      �    write_to_slack(message, '#test', 'Fin Finderson', 'http://2.bp.blogspot.com/-d94FNkb_Zxc/Tij3o8NE77I/AAAAAAAAAdw/DeZlPhbh2uM/s1600/fin.png')5�_�                     b        ����                                                                                                                                                                                                                                                                                                                                                             X\     �               u   class TeamNotifier   !  def self.skip_pings_from(email)       return false if email.nil?   +    # client team makes the channel chatty!       blacklist = [         "kousun12@gmail.com"       ]   ,    return true if blacklist.include?(email)   9    return true if email.match(/test.*@.*fin\.ventures/i)       return false     end       )  def self.app_event_ping(email, message)   +    # sends a message on APP_EVENTS_CHANNEL   )    return if self.skip_pings_from(email)   "    icon_url = self.img_url(email)   3    SLACK_NOTIFIER.ping message, icon_url: icon_url     end           "  def self.slack_user_create(user)   -    message = %Q(👤 New User: #{user.email}       #{user.name}   5    #{Slack::Notifier::URL_PREFIX}agent/u/#{user.id}/       )   ,    self.app_event_ping(user.email, message)     end          def self.slack_user_paid(user)   )    message = %Q(💰 Paid: #{user.email}       #{user.name}   5    #{Slack::Notifier::URL_PREFIX}agent/u/#{user.id}/       )   ,    self.app_event_ping(user.email, message)     end       !  def self.slack_user_login(user)   .    message = %Q(📲 App Login: #{user.email}   5    #{Slack::Notifier::URL_PREFIX}agent/u/#{user.id}/       )   ,    self.app_event_ping(user.email, message)     end       *  def self.slack_waitlist_joined(identity)   =    message = %Q(📝 Waitlist Joined: #{identity.id_value}\n   H    identity #[#{identity.id}](#{self.url_for_identity_id(identity.id)})       )   3    self.app_event_ping(identity.id_value, message)     end       +  def self.slack_beta_invite_sent(identity)   >    message = %Q(✉️ Invite Sent To: #{identity.id_value}\n   H    identity #[#{identity.id}](#{self.url_for_identity_id(identity.id)})       )   3    self.app_event_ping(identity.id_value, message)     end       *  def self.slack_q_overflow_alert(message)   %    SLACK_ALERT_NOTIFIER.ping message     end       3  def self.slack_dinosaur_response(survey_response)   �    body = "#{survey_response.survey_response}\n identity #[#{survey_response.identity_id}](#{self.url_for_identity_id(survey_response.identity_id)})"   '    identity = survey_response.identity   i    write_to_slack(body, Slack::Notifier::DINOSAURS_CHANNEL, identity.name, self.img_url(identity.email))     end         #     # new message     #     def self.img_url(email)   "    email_address = email.downcase   /    hash = Digest::MD5.hexdigest(email_address)   ,    "http://www.gravatar.com/avatar/#{hash}"     end       #  def self.url_for_message(message)   /    self.url_for_thread(message.message_thread)     end       !  def self.url_for_thread(thread)   M    "#{Slack::Notifier::URL_PREFIX}agent/u/#{thread.user.id}/t/#{thread.id}/"     end       +  def self.url_for_identity_id(identity_id)   C    "#{Slack::Notifier::URL_PREFIX}agent/identities/#{identity_id}"     end       %  def self.thread_link_footer(thread)   <    "thread #[#{thread.id}](#{self.url_for_thread(thread)})"     end          def self.message_body(message)   S    "message \##{message.id} in #{self.thread_link_footer(message.message_thread)}"     end       &  def self.write_to_engineers(message)   �    write_to_slack('test', '#test', 'Fin Finderson', 'http://2.bp.blogspot.com/-d94FNkb_Zxc/Tij3o8NE77I/AAAAAAAAAdw/DeZlPhbh2uM/s1600/fin.png')     end       (  def self.slack_message_create(message)   !    return if message.from_agent?           u = message.user   $    icon_url = self.img_url(u.email)   b    write_to_slack(message_body(message), Slack::Notifier::NEW_MESSAGE_CHANNEL, u.email, icon_url)     end       �  def self.write_to_slack(body, channel, username="mattknox", icon_url="http://www.gravatar.com/avatar/91aef80c33fbc0f67f33c0bf0839e149")   <    slack_options = { channel: channel, username: username }       if Rails.env.test?   F      slack_options[:http_client] = Slack::Notifier::NO_OP_HTTP_CLIENT       end   O    notifier = Slack::Notifier.new(Slack::Notifier::WEBHOOK_URL, slack_options)   *    notifier.ping body, icon_url: icon_url     end   end5�_�                    ^       ����                                                                                                                                                                                                                                                                                                                            b          f          V       Wd��     �   ]   _   q      c    "#{message.text}\nmessage\##{message.id} in #{self.thread_link_footer(message.message_thread)}"5�_�             	      b        ����                                                                                                                                                                                                                                                                                                                            a          c           V       Wda�     �   a   g        5�_�                   a        ����                                                                                                                                                                                                                                                                                                                            a          a           V       Wda�    �   `   d        5�_�                    a       ����                                                                                                                                                                                                                                                                                                                            a          a           V       Wdb-     �   `   c   l      O  def self.write_to_slack(body, channel = Slack::Notifier::NEW_MESSAGE_CHANNEL,5�_�                    a       ����                                                                                                                                                                                                                                                                                                                            a          a           V       Wdb.     �   `   c   k      f  def self.write_to_slack(body, channel = Slack::Notifier::NEW_MESSAGE_CHANNEL, username = "mattknox",5�_�                    a   O    ����                                                                                                                                                                                                                                                                                                                            a          a           V       Wdb.    �   `   c   j      �  def self.write_to_slack(body, channel = Slack::Notifier::NEW_MESSAGE_CHANNEL, username = "mattknox", icon_url = "http://www.gravatar.com/avatar/91aef80c33fbc0f67f33c0bf0839e149")5�_�                     a   '    ����                                                                                                                                                                                                                                                                                                                                                             Wdi@    �   `   b   i      �  def self.write_to_slack(body, channel, username = "mattknox", icon_url = "http://www.gravatar.com/avatar/91aef80c33fbc0f67f33c0bf0839e149")5�_�                    e       ����                                                                                                                                                                                                                                                                                                                            e          e          V       Wda�    �   d   n        5�_�                     b       ����                                                                                                                                                                                                                                                                                                                            b          b          V       Wda�     �   a   g        5��