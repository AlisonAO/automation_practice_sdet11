@checkout
Feature: Checkout Activities
as a User
i want to be able to checkout and purchase items from the website

  Scenario: When we have landed on the checkout page, I will be able to proceed to order summary
    Given I am on the checkout summary page
    When I click the proceed button
    Then I go to the address confirmation page

  Scenario: When I land on the address confirmation page I will be able to enter a comment and continue
    Given I enter a message
    When I click proceed
    Then I will go to the shipping page

  Scenario: When I proceed through the checkout process, I will be able to confirm my order and pay
    Given I proceed through the pages
    When I check the terms of service checkbox
    Then I will be able to confirm my order
