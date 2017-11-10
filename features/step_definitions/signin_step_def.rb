Given("I am on the sign in page") do
  @automation = AutomationPracticeSite.new
  @automation.homepage.visit_home_page
  @automation.homepage.click_sign_in_link
end

When("I input a valid email and password and click sign in") do
  @automation.login.input_user_email('test@spartaglobal.co')
  @automation.login.input_user_password('password')
  @automation.login.click_sign_in_submit_button
end

Then("I will be signed in and redirected to the my account page") do
    @automation.myaccountpage.click_wishlist_button
end
