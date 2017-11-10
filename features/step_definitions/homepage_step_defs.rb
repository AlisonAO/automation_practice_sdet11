Given("I am on the homepage") do
  @auto_site = AutomationPracticeSite.new
  @auto_site.homepage.visit_home_page
end

When("I click the contact us link") do
  @auto_site.homepage.click_contact_us_link
  sleep 4
end

Then("I go to the contact us page") do
end
