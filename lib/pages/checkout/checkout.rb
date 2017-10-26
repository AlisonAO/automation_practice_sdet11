require 'capybara/dsl'

class Checkout
  include Capybara::DSL
  CHECKOUT_URL = 'http://automationpractice.com/index.php?controller=order'
  CHECKOUT_SIGN_IN_URL = 'http://automationpractice.com/index.php?controller=authentication&multi-shipping=0&display_guest_checkout=0&back=http%3A%2F%2Fautomationpractice.com%2Findex.php%3Fcontroller%3Dorder%26step%3D1%26multi-shipping%3D0'
  CHECKOUT_ADDRESS_URL = 'http://automationpractice.com/index.php?controller=order&step=1'
  CHECKOUT_PAYMENT_URL = 'http://automationpractice.com/index.php?controller=order&multi-shipping='
  CHECKOUT_PROCEED_BUTTON = '//*[@id="center_column"]/p[2]/a[1]'
  DELETE_ITEM_BUTTON = '#3_13_0_0'

  def visit_checkout
    visit(CHECKOUT_URL)
  end

  def checkout_button
    find(CHECKOUT_PROCEED_BUTTON)
  end

  def delete_button
    find(DELETE_ITEM_BUTTON)
  end

end
