require 'spec_helper'




describe 'Contact Automation Test' do

  before(:all) do
    @automation_practice_site = AutomationPracticeSite.new
    @contact = Contact.new
  end

  it '  ' do
    @automation_practice_site.contactpage.visit_contact_page
  end

  it 'should write a message' do
    @contact.message_write
    sleep(2)
  end

  it 'should fill in the email field' do
    @contact.email_write
    sleep(2)
  end

  it 'should fill in the order reference number field' do
    @contact.order_reference_write
  end

  it 'Should send a acceptable message' do
    @contact.order_reference_write
    @contact.message_write
    @contact.choose_subject
    @contact.send_message
    sleep(1)
  end

end
