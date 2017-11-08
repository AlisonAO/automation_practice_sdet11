@chekout
Feature: Checkout Activities
as a User
i want to be able to checkout and purchase items from the website

  Scenario: When there is an item in the basket, I will be able to proceed to order summary
    Given Items are added to the basket
    And I am on the checkout summary page
    When I click the proceed button
    Then I go to the address confirmation page

  Scenario: When I am on the address confirmation page, I can add a comment about my order and proceed
    Given I am on the address confirmation page
    When I add a comment and click proceed to checkout
    Then I go to the shipping page

  Scenario: When I am on the shipping page and have checked the terms of service checkbox I can proceed
    Given I am on the shipping page
    When I check the terms of service checkbox
    Then I can proceed to checkout

  Scenario: When I am on the payments page, I can decide my payment method
    Given I am on the payments page
    When I click pay by wire
    Then I go to the order confirmation page

  Scenario: When I click to confirm my order, I see a summary of the order
    Given I am on the order confirmation page
    When I click confirm order
    Then I see a summary of my order
