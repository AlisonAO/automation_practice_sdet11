require 'spec_helper'

describe 'checkout page test' do

  before(:all) do
    @checkout = AutomationPracticeSite.new
    @automation = AutomationPracticeSite.new
  end

  it "should sign in" do
      @automation.login.visit_sign_in_page
      @automation.login.input_user_email("test@spartaglobal.co")
      @automation.login.input_user_password("password")
      @automation.login.click_sign_in_submit_button
      sleep 10
  end

  it 'should identify we are on the right page' do
    @checkout.zcheckout.visit_checkout
    sleep 3
  end

  # it 'should display an alert when trying to checkout with no items in basket' do
  #   if (@checkout.checkout.delete_button)
  #   expect(@checkout.checkout.no_items_alert).visible?
  #   sleep 3
  # end

  it 'should click the checkout button and proceed to next step' do
    @checkout.zcheckout.checkout_button.click
    sleep 3
  end
end
