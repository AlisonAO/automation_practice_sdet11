require 'capybara/dsl'

class AddNewAddressPage
  include Capybara::DSL

#Page objects below
  ADD_NEW_ADDRESS_PAGE_URL = 'http://automationpractice.com/index.php?controller=address'
  FIRST_NAME_INPUT_FIELD_ID = '#firstname'
  LAST_NAME_INPUT_FIELD_ID = '#lastname'
  COMPANY_NAME_INPUT_FIELD_ID = '#company'
  ADDRESS_INPUT_FIELD_ID = '#address1'


end
