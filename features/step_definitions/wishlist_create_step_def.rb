Given("I am logged in and on the my account page") do
  @site = AutomationPracticeSite.new
  @site.login.visit_sign_in_page
  @site.login.input_user_email("test@spartaglobal.co")
  @site.login.input_user_password("password")
  @site.login.click_sign_in_submit_button
  expect(@site.myaccountpage.current_url).to eq 'http://automationpractice.com/index.php?controller=my-account'
  sleep 2
end

When("I click the my wishlists button") do
  @site.myaccountpage.click_wishlist_button
  sleep 2
end

Then("I will be redirected to the my wishlist page") do
  expect(@site.mywishlistpage.current_url).to eq 'http://automationpractice.com/index.php?fc=module&module=blockwishlist&controller=mywishlist'
  sleep 2
end

When("I go to the my wishlist page") do
  @site.myaccountpage.click_wishlist_button
end

And("I enter a wishlist name and click save") do
  @listname = 'My Wishlist'
  @site.mywishlistpage.visit_wishlist_page
  @site.mywishlistpage.input_wishlist_name(@listname)
  @site.mywishlistpage.click_submit_button
end

Then("it will create a new wishlist with that name") do
  @site.mywishlistpage.click_my_wishlist(@listname)
  sleep 2
end
