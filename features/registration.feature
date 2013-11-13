Feature: Registration
  As a user I would like to register in the application
  So that I can login to the application

Scenario:
  Given I am on the registration page
  When I register with a valid email address and password
  Then I should see the registration message on the home page


Scenario:
  Given I am on the registration page
  When I register an existing user
  Then I should see the message "You are already registered on this app, please click here to Sign in"

Scenario:
  Given I am on the registration page
  When I register with an invalid email address
  Then I should see the message "Please enter a valid email address"

Scenario:
  Given I am on the registration page
  When I register with an invalid password
  Then I should see the message "Please pick a password containing at least 8 characters"

Scenario:
  Given I am on the registration page
  When I register with different password in the confirm password
  Then I should see the message "The two passwords you entered do not match. Please enter again."
