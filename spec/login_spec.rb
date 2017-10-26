require 'spec_helper'

describe 'webpage' do

    before(:all) do
        @automation = AutomationPracticeSite.new
    end

    it "should sign in" do
        @automation.login.visit_sign_in_page
        @automation.login.input_user_email("test@spartaglobal.co")
        @automation.login.input_user_password("password")
        @automation.login.click_sign_in_submit_button
        sleep 10
    end



end
