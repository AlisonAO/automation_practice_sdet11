Given("that I am on the t-shirt item page") do
  @cart = Cart.new
  @cart.load_item_page
  expect(@cart.current_url).to eq('http://automationpractice.com/index.php?id_product=1&controller=product')
end

When("I click on the add to cart button") do
  @cart.click_item_page
end

And("I click on the proceed to checkout button") do
  @cart.click_proceed_to_checkout_button
end

Then("I will go to the checkout page") do
  expect(@cart.current_url).to eq('http://automationpractice.com/index.php?controller=order')
end

# When("I click on the return to shopping button") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("I will go back to the t-shirt item page") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
