require 'spec_helper'

describe 'webpage' do

    before(:all) do
        @automation = AutomationPracticeSite.new
    end

    it "should create account" do
        @automation.login.visit_sign_in_page
        sleep 5
        @automation.login.input_new_user_email('code@hotmail.com')
        @automation.login.click_create_submit_button
        sleep 5
    end

    it "should create an account" do
        @automation.createaccount.choose_title_button('Mrs.')
        @automation.createaccount.input_customer_firstname('Zara')
        @automation.createaccount.input_customer_lastname('Swanson')
        @automation.createaccount.input_email('code@hotmail.com')
        @automation.createaccount.choose_day('option[2]')
        sleep 5
    end



end
