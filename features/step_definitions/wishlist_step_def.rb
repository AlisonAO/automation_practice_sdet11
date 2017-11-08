Given("I am logged in and on the my account page") do
  @site = AutomationPracticeSite.new
  @site.login.visit_sign_in_page
  @site.login.input_user_email("test@spartaglobal.co")
  @site.login.input_user_password("password")
  @site.login.click_sign_in_submit_button
  expect(@site.myaccountpage.current_url).to eq 'http://automationpractice.com/index.php?controller=my-account'
  sleep 1
end

When("I click the my wishlists button") do
  @site.myaccountpage.click_wishlist_button
  sleep 1
end

Then("I will be redirected to the my wishlist page") do
  expect(@site.mywishlistpage.current_url).to eq 'http://automationpractice.com/index.php?fc=module&module=blockwishlist&controller=mywishlist'
  sleep 1
end

Given("I am logged in and on the my wishlist page") do
  @site = AutomationPracticeSite.new
  @site.login.visit_sign_in_page
  @site.login.input_user_email("test@spartaglobal.co")
  @site.login.input_user_password("password")
  @site.login.click_sign_in_submit_button
  @site.mywishlistpage.visit_wishlist_page
  expect(@site.myaccountpage.current_url).to eq 'http://automationpractice.com/index.php?fc=module&module=blockwishlist&controller=mywishlist'
  sleep 1
end

When("I enter a wishlist name and click save") do
  @listname = 'My Wishlist'
  @site.mywishlistpage.visit_wishlist_page
  @site.mywishlistpage.input_wishlist_name(@listname)
  @site.mywishlistpage.click_submit_button
end

Then("it will create a new wishlist with that name") do
  @site.mywishlistpage.click_my_wishlist(@listname)
  sleep 1
end

When("I click the delete icon on a wishlist") do
  @site.mywishlistpage.delete_wishlist
  sleep 1
end

Then("that wishlist will be deleted") do
  expect(@site.mywishlistpage.find_delete_wishlist_icon).to eq nil
end
