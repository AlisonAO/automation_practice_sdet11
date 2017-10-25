require 'spec_helper'

describe 'checkout page test' do

  before(:all) do
    @checkout = AutomationPracticeSite.new
  end

  it 'should identify we are on the right page' do
    @checkout.checkout.visit_checkout
    sleep 3
  end
end
