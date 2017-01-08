Vim�UnDo� �w��Ntf�8x�S��S�
��q#w��H�&��_V   �                                  W��    _�                            ����                                                                                                                                                                                                                                                                                                                                                             W���    �         �          class FakeController5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             W��     �               �   require 'rails_helper'   require 'fin_error'   )require './app/controllers/concerns/auth'       RSpec.describe Auth do     before(:all) do   1    class FakeController < ActionController::Base         def authenticate_user!   	      end         def current_user   	      end         def request   	      end         def params   	      end         def signed_in?(user)   	      end         def sign_in(user)   	      end   #      def verify_authenticity_token   	      end         include Auth       end     end     after(:all) do   2    Object.__send__ :remove_const, :FakeController     end       )  let(:controller) { FakeController.new }   ,  let(:agent) { FactoryGirl.create(:agent) }   *  let(:user) { FactoryGirl.create(:user) }           '  describe '#current_user_is_agent?' do   #    it "returns false when user" do   B      allow(controller).to receive(:current_user).and_return(user)   ;      expect(controller.current_user_is_agent?).to eq false       end   #    it "returns false when user" do   C      allow(controller).to receive(:current_user).and_return(agent)   :      expect(controller.current_user_is_agent?).to eq true       end     end       $  describe '#authenticate_agent!' do   #    it "returns false when user" do   B      allow(controller).to receive(:current_user).and_return(user)   e      allow(controller).to receive(:params).and_return({token: FinSession.find_by(user_id: user.id)})   V      expect { controller.authenticate_agent! }.to raise_error(FinError::Unauthorized)       end   #    it "returns false when user" do   C      allow(controller).to receive(:current_user).and_return(agent)   :      allow(controller).to receive(:params).and_return({})   $      controller.authenticate_agent!       end     end       I  describe "verify_authenticity_token_unless_authenticated_with_token" do   $    context 'logged in, no token' do         before do           # Sign in user   D        allow(controller).to receive(:current_user).and_return(user)   >        controller.instance_variable_set(:@current_user, user)   <        allow(controller).to receive(:params).and_return({})   	      end       1      it 'does call verify_authenticity_token' do   A        expect(controller).to receive(:verify_authenticity_token)   L        controller.verify_authenticity_token_unless_authenticated_with_token   	      end       end       )    context 'logged in & passes token' do         before do   '        FinSession.gen_api_token!(user)           # Sign in user   >        controller.instance_variable_set(:@current_user, user)   D        allow(controller).to receive(:current_user).and_return(user)           # Pass down token   m        allow(controller).to receive(:params).and_return({token: FinSession.find_by(user_id: user.id).token})   	      end       5      it 'does not call verify_authenticity_token' do   E        expect(controller).not_to receive(:verify_authenticity_token)   L        controller.verify_authenticity_token_unless_authenticated_with_token   	      end       end     end       )  describe '#authenticate_member_web!' do   0    it 'raises unauthorized if invalid token' do   A      allow(controller).to receive(:current_user).and_return(nil)   :      allow(controller).to receive(:params).and_return({})   A      allow(controller).to receive(:signed_in?).and_return(false)   [      expect { controller.authenticate_member_web! }.to raise_error(FinError::Unauthorized)       end       2    it 'creates a new session if not logged in' do   ,      sesh = FinSession.gen_api_token!(user)   B      allow(controller).to receive(:current_user).and_return(user)   K      allow(controller).to receive(:params).and_return({token: sesh.token})   A      allow(controller).to receive(:signed_in?).and_return(false)   B      allow(controller).to receive(:current_user).and_return(user)   8      expect(controller).to receive(:sign_in).with(user)   )      controller.authenticate_member_web!       end       G    it 'can look for a valid token in the HTTP Authorization header' do   ,      sesh = FinSession.gen_api_token!(user)   )      controller.authenticate_member_web!   d      allow(controller).to receive(:headers).and_return({'Authorization' => "Bearer #{sesh.token}"})   >      expect(controller._authenticated_with_token).to eq false   )      controller.authenticate_member_web!   =      expect(controller._authenticated_with_token).to eq true   0      expect(controller.current_user).to eq user       end       4    it 'can look for a valid token in the params' do   ,      sesh = FinSession.gen_api_token!(user)   )      controller.authenticate_member_web!   K      allow(controller).to receive(:params).and_return({token: sesh.token})   >      expect(controller._authenticated_with_token).to eq false   )      controller.authenticate_member_web!   =      expect(controller._authenticated_with_token).to eq true   0      expect(controller.current_user).to eq user       end       B    it 'raises unauthorized if an agent is currently logged in' do   C      allow(controller).to receive(:current_user).and_return(agent)   [      expect { controller.authenticate_member_web! }.to raise_error(FinError::Unauthorized)       end     end   end5��