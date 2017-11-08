Feature: Create and Delete Wishlist
as a user
i want to be able to create and delete wishlists

  Scenario: If I'm logged in I can access the my wishlist page.
    Given I am logged in and on the my account page
    When I click the my wishlists button
    Then I will be redirected to the my wishlist page

  Scenario: If I'm on the my wishlist page I can create a new wishlist.
    Given I am logged in and on the my wishlist page
    When I enter a wishlist name and click save
    Then it will create a new wishlist with that name

  Scenario: If I'm on a product page I can add a product to my wishlist
    Given I am logged in and on a product page
    When I click the add to wishlist button
    Then I will get an added to wishlist message

  Scenario: If I've added a product to my wishlist then I should see it in the wishlist
    Given I have added a product to my wishlist
    When I go to my my wishlist page and click on my wishlist
    Then I will see the product in my wishlist

  Scenario: If I'm on the my wishlist page I can delete a wishlist if there is one.
    Given I am logged in and on the my wishlist page
    When I click the delete icon on a wishlist
    Then that wishlist will be deleted
