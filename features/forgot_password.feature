@forgot
Feature: forgot password
As a signed out user
i want to be request a new password


Scenario: If I enter my email and click forgot password i can request a new passowrd
  Given I am on the signin page
  When I click the forgot password button
  And I enter my email address
  Then I will be shown confirmation that a new password has been emailed to me
