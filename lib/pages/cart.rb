require 'capybara/dsl'

class Cart
  include Capybara::DSL

  #Page Objects
  #Item Page
  ITEM_PAGE_URL = 'http://automationpractice.com/index.php?id_product=1&controller=product'
  ADD_TO_CART_ID = '#add_to_cart'
  CONTINUE_SHOPPING = '//*[@id="layer_cart"]/div[1]/div[2]/div[4]/span'
  PROCEED_TO_CHECKOUT = '//*[@id="layer_cart"]/div[1]/div[2]/div[4]/a'
  #Category Page
  CATEGORY_PAGE_URL = 'http://automationpractice.com/index.php?id_category=5&controller=category'
  CATEGORY_PAGE_ADD_TO_CART = '//*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1]'
  #Home Page
  HOME_PAGE_URL = 'http://automationpractice.com/index.php'
  HOME_PAGE_ADD_TO_CART = '//*[@id="homefeatured"]/li[5]/div/div[2]/div[2]/a[1]'

  #Product Page

  #Helper Methods
  def load_page
    visit(ITEM_PAGE_URL)
  end

  def click_add_to_cart_button
    find(ADD_TO_CART_ID).click
  end

  def click_continue_shopping_button
    find(:xpath, CONTINUE_SHOPPING).click
  end

  def click_proceed_to_checkout_button
    find(:xpath, PROCEED_TO_CHECKOUT).click
  end

end

cart = Cart.new
