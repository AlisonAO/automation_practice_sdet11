require 'capybara/dsl'

class AddNewAddressPage
  include Capybara::DSL

#Page objects below
  ADD_NEW_ADDRESS_PAGE_URL = 'http://automationpractice.com/index.php?controller=address'
  FIRST_NAME_INPUT_FIELD_ID = '#firstname'
  LAST_NAME_INPUT_FIELD_ID = '#lastname'
  COMPANY_NAME_INPUT_FIELD_ID = '#company'
  ADDRESS_INPUT_FIELD_ID = '#address1'
  ADDRESS_LINE_2_INPUT_FIELD_ID = '#address2'
  CITY_INPUT_FIELD_ID = '#city'
  STATE_SELECTOR_ID = '#id_state'
  POSTCODE_INPUT_FIELD_ID = '#postcode'
  COUNTRY_SELECTOR_ID = '#id_country'
  HOME_PHONE_FIELD_ID = '#phone'
  MOBILE_PHONE_FIELD_ID = '#phone_mobile'
  ADDITIONAL_INFORMATION_FIELD_ID = '#other'
  ASSIGN_AN_ADDRESS_ALIAS_FIELD_ID = '#alias'

  #Helper methods below
    def visit_add_new_address_page
      visit(ADD_NEW_ADDRESS_PAGE_URL)
    end

    def find_first_name_field
      find(FIRST_NAME_INPUT_FIELD_ID)
    end

    def input_first_name_field(firstname)
      find_first_name_field.send_keys(firstname)
    end

    def find_last_name_field
      find(LAST_NAME_INPUT_FIELD_ID)
    end

    def input_first_name_field(lastname)
      find_last_name_field.send_keys(lastname)
    end

    def find_company_name_field
      find(COMPANY_NAME_INPUT_FIELD_ID)
    end

    def input_company_name_field(company)
      find_company_name_field.send_keys(company)
    end

    def find_address_field
      find(ADDRESS_INPUT_FIELD_ID)
    end

    def input_address_field(address)
      find_address_field.send_keys(address_field)
    end

    def find_address_line_2_field
      find(ADDRESS_LINE_2_INPUT_FIELD_ID)
    end

    def input_address_line_2_field(address_line_2)
      find_address_line_2_field.send_keys(address_line_2_field)
    end

    def find_city_field
      find(CITY_INPUT_FIELD_ID)
    end

    def input_city_field(city)
      find_city_field(city)
    end


end
