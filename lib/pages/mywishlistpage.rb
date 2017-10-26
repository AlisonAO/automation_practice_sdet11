require 'capybara/dsl'

class MyWishListPage
  include Capybara::DSL

  # Page objects below
  WISHLIST_PAGE_LINK = 'http://automationpractice.com/index.php?fc=module&module=blockwishlist&controller=mywishlist'
  WISHLIST_FORM_ID = '#form_wishlist'
  WISHLIST_NAME_FIELD_ID = '#name'
  WISHLIST_SUBMIT_BUTTON_ID = '#submitWishlist'
  @wishlist_name = ''

  # Helper methods
  def wishlist_name_field
    find(WISHLIST_NAME_FIELD_ID)
  end

  def input_wishlist_name(listname)
    wishlist_name_field.send_keys(listname)
    @wishlistname = listname
  end

  def submit_button
    find(WISHLIST_SUBMIT_BUTTON_ID)
  end

  def click_submit_button
    submit_button.click
  end

  def my_wishlist
    find(link: @wishlistname)
  end

  def click_my_wishlist
    my_wishlist.click
  end

end
