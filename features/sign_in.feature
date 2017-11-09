@signin
Feature: sign in
As a current user
i want to be able to sign in

Scenario: If I enter the correct details I will be able to sign in
  Given I am on the sign in page
  When I input a valid email and password and click sign in
  Then I will be signed in and redirected to the my account page
