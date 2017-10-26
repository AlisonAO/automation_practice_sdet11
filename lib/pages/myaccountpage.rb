require 'capybara/dsl'

class MyAccountPage
  include Capybara::DSL

  ACCOUNT_PAGE_LINK = 'http://automationpractice.com/index.php?controller=my-account'

  def my_wishlist_button
    find('a', :text => 'My wishlists')
  end

  def click_wishlist_button
    my_wishlist_button.click
  end

end
