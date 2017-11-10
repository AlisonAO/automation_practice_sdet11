Given("I am on the add new address page") do
  @auto_site = AutomationPracticeSite.new
  @auto_site.addnewaddresspage.visit_add_new_address_page
end

When("I fill out the form correctly") do
  @auto_site.addnewaddresspage.input_address_field("12 Ellesmere Road")
  @auto_site.addnewaddresspage.input_address_line_2_field("Willesden Green")
  @auto_site.addnewaddresspage.input_city_field("London")
  @auto_site.addnewaddresspage.select_state
end

And("I click the save button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the address is saved and I am redirected to the my addresses page") do
  pending # Write code here that turns the phrase above into concrete actions
end
