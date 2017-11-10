
Given("I am signed in on the checkout page and have an item in the cart") do
  @checkout = AutomationPracticeSite.new
  @checkout.homepage.visit_home_page
  @checkout.homepage.click_sign_in_link
  sleep 3
  @checkout.login.input_user_email('test@spartaglobal.co')
  @checkout.login.input_user_password('password')
  @checkout.login.click_sign_in_submit_button
  sleep 3

  @cart = AutomationPracticeSite.new.cart

  @cart.load_item_page
  @cart.click_item_page
  # @cart.click_proceed_to_checkout_button
  sleep 3


  @checkout.checkout.visit_checkout
  sleep 3
end

When("I click the proceed button") do
  @checkout.checkout.checkout_button.click
  sleep 3
end

Then("I go to the address confirmation page") do
  # pending # Write code here that turns the phrase above into concrete actions
end

And("I enter a comment") do
  @checkout.checkout.input_checkout_field('AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA')
  sleep 3
end

And("I click proceed") do
  @checkout.checkout.checkout_button_two.click
  sleep 3
end

Then("I will go to the shipping page") do
  # pending # Write code here that turns the phrase above into concrete actions
end

When("I check the terms of service checkbox") do
  @checkout.checkout.tos_checkbox.click
  @checkout.checkout.checkout_button_three.click

  sleep 3
end

Then("I will be able to confirm my order") do
  @checkout.checkout.payment_method_1.click
  sleep 3
  @checkout.checkout.confirm_order.click
  sleep 3
end
