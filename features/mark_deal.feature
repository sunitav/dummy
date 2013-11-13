Feature: : Mark Deal
  As a user I want to be able to mark a deal as a favourite when logged in
  So that I can manage what deals appear on my favourites list.

  Scenario:
    Given I am logged in
    When I mark a "Cadbury Fabulous Fingers 110g" deal from the "Food Cupboard" category
    Then The deal is saved to my favourites

