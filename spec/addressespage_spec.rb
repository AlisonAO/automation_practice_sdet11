require 'spec_helper'

describe 'Automation Practice' do

  before(:all) do
    @automation_practice_site = AutomationPracticeSite.new
  end

  it "should sign in" do
      @automation_practice_site.login.visit_sign_in_page
      @automation_practice_site.login.input_user_email("test@spartaglobal.co")
      @automation_practice_site.login.input_user_password("password")
      @automation_practice_site.login.click_sign_in_submit_button
      sleep 3
  end

  it 'should click the link called my addresses' do
    @automation_practice_site.myaccountpage.click_my_addresses_link
  end

  # it 'should visit my addresses page' do
  #   @automation_practice_site.addressespage.visit_my_addresses_page
  #   sleep 3
  # end



end
