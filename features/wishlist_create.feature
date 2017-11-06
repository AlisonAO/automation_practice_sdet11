Feature: Wishlist
as a user
i want to be able to create a new wishlist

  Scenario:  If I click on the my account button I will be redirected to my wishlist page and can create a new wishlist.
    Given I am logged in and on the my account page
    When I click the my wishlists button
    Then I will be redirected to the my wishlist page

  Scenario:  I can create a new wishlist.
    Given I am logged in and on the my account page
    When I go to the my wishlist page
    And I enter a wishlist name and click save
    Then it will create a new wishlist with that name
