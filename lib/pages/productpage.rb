require 'capybara/dsl'

class ProductPage
  include Capybara::DSL

  # Page objects below
  WISHLIST_PAGE_LINK = 'http://automationpractice.com/index.php?id_product=1&controller=product'
  WISHLIST_BUTTON_ID = '#wishlist_button'

  # Helper methods
  def wishlist_button
    find(WISHLIST_BUTTON_ID)
  end

  def click_add_to_wishlist_button
    wishlist_button.click
  end

end
