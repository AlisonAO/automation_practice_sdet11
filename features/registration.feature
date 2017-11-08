@register
Feature: user Registration
As a new user
i want to be able to register


Scenario: If I enter the correct details I will create an account
  Given I am on the register page
  And I enter my email address and click the link to register
  When I input the correct details
  Then I would have created an account
