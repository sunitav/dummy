Feature: : Login
  As a user I want to be able to login to the application
  So that I can view and mark my favourite deals

Scenario: Login Email validation
  Given I am on the Sign In Page
  When I enter an invalid email id
  Then I should see the message "Please enter a valid email address"

Scenario: Login Password validation
  Given I am on the Sign In Page
  When I enter an invalid password
  Then I should see the message "Please pick a password containing at least 8 characters"

Scenario: Login
  Given I am on the Sign In Page
  When I enter a valid email and password
  Then I should be logged in

Scenario: User does not exist
  Given I am on the Sign In Page
  When I enter unregistered email
  Then I should see the message "Email/Password is invalid"

Scenario: Incorrect Password
  Given I am on the Sign In Page
  When I enter an incorrect password
  Then I should see the message "Email/Password is invalid"