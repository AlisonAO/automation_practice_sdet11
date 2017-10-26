require 'spec_helper'

describe 'checkout page test' do

  before(:all) do
    @checkout = AutomationPracticeSite.new
  end

  it 'should identify we are on the right page' do
    @checkout.checkout.visit_checkout
    sleep 3
  end

  it 'should display an alert when trying to checkout with no items in basket' do
    expect(@checkout.checkout.no_items_alert).visible?
    sleep 3
  end

  # it 'should click the checkout button and proceed to next step' do
  #   @checkout.checkout.checkout_button.click
  #   sleep 3
  # end
end
