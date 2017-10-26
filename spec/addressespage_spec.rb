require 'spec_helper'

describe 'Automation Practice' do

  before(:all) do
    @automation_practice_site = AutomationPracticeSite.new
  end

  it 'should visit my addresses page' do
    @automation_practice_site.addressespage.visit_my_addresses_page
    sleep 3
  end


end
