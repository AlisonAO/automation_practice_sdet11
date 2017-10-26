require 'spec_helper'

describe 'create wishlist' do

  before(:all) do
    @site = AutomationPracticeSite.new
  end

  it 'should create a new wishlist' do
    listname = 'My Wishlist'
    @site.mywishlistpage.visit_wishlist_page
    @site.mywishlistpage.input_wishlist_name(listname)
    @site.mywishlistpage.click_submit_button
    @site.mywishlistpage.click_my_wishlist(listname)
  end

end
