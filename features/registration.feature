Feature: user Registration
As a new user
i want to be able to register

@register
Scenario: If I enter the correct details I will create an account
  Given I am on the register page
  And I enter my email address and click the link to register
  When I input the correct details
  Then I will have an account and be directed to the my account page

@register-negative
Scenario: If I enter an invalid postcode I will receive the appropriate error
  Given I am on the register page
  And I enter my email address and click the link to register
  When I input the correct details and an invalid postcode
  Then An error message will appear on the page
