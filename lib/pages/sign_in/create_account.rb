require 'capybara/dsl'

class CreateAccount

  include Capybara::DSL

  MR_TITLE_BUTTON_ID = '#id_gender1'
  MRS_TITLE_BUTTON_ID = '#id_gender2'
  CUSTOMER_FIRSTNAME_FIELD_ID = '#customer_firstname'
  CUSTOMER_LASTNAME_FIELD_ID = '#customer_lastname'
  EMAIL_FIELD_ID = '#email'
  PASSWORD_FIELD_ID = '#passwd'
  DAY_DROPDOWN_ID = '#days'
  MONTH_DROPDOWN_ID = '#months'
  YEAR_DROPDOWN_ID = '#years'
  NEWSLETTER_CHECKBOX_ID ='#newsletter'
  SPECIAL_OFFERS_CHECKBOX_ID = '#optin'
  ADDRESS_FIRSTNAME_FIELD_ID = '#firstname'
  ADDRESS_LASTNAME_FIELD_ID = '#lastname'
  COMPANY_FIELD_ID = '#company'
  ADDRESS_LINE_ONE_FIELD_ID = '#address1'
  ADDRESS_LINE_TWO_ID = '#address2'
  CITY_FIELD_ID = '#city'
  STATE_DROPDOWN_ID = '#id_state'
  POSTCODE_FIELD_ID = '#postcode'
  COUNTRY_DROPDOWN_ID = '#id_country'
  ADDITIONAL_INFO_ID = '#other'
  HOME_PHONE_FIELD_ID = '#phone'
  MOBILE_PHONE_FIELD_ID = '#phone_mobile'
  ADDRESS_ALIAS_FIELD_ID = '#alias'
  SUBMIT_ACCOUNT_BUTTON_ID = '#submitAccount'

end
