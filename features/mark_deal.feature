Feature: : Mark Deal
  As a user I want to be able to mark a deal as a favourite when logged in
  So that I can manage what deals appear on my favourites list.

  Scenario:
    Given I am logged in
    When I mark a "Cadbury Fabulous Fingers 110g" deal from the "Food Cupboard" category
    Then I see the message "The deal has been added to your favourites"
    And The deal is saved to my favourites

