
Given("I am on the checkout summary page") do
  @checkout = AutomationPracticeSite.new
  @checkout.checkout.visit_checkout
  sleep 3
end

When("I click the proceed button") do
  @checkout.checkout.checkout_button.click
  sleep 3
end

Then("I go to the address confirmation page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I enter a message") do
  @checkout = AutomationPracticeSite.new
  @checkout.checkout.input_checkout_field('AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA')
  sleep 3
end

When("I click proceed") do
  @checkout.checkout.checkout_button_two.click
  sleep 3
end

Then("I will go to the shipping page") do
  @checkout.checkout.checkout_button_three.click
end

Given("I proceed through the pages") do
  @checkout = AutomationPracticeSite.new
end

When("I check the terms of service checkbox") do
  @checkout.checkout.tos_checkbox.click
  sleep 3
end

Then("I will be able to confirm my order") do
  @checkout.checkout.payment_method_1.click
  sleep 3
  @checkout.checkout.confirm_order.click
  sleep 3
end
