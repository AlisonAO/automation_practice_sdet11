require 'capybara/dsl'

class Homepage
  include Capybara::DSL

  # Page objects below
  HOMEPAGE_URL = 'http://automationpractice.com/index.php'
  SIGN_IN_LINK_ID = '.login'
  CONTACT_US_LINK_ID = '#contact-link'

  # Helper methods
  def visit_home_page
    visit(HOMEPAGE_URL)
  end

  def contact_us_link
    find(CONTACT_US_LINK_ID)
  end
  
  def click_contact_us_link
    contact_us_link.click
  end

  def sign_in_link
    find(SIGN_IN_LINK_ID)
  end

  def click_sign_in_link
    sign_in_link.click
  end







end
