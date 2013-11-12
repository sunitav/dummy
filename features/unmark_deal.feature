Feature: I want to be able to un-mark a deal as a favourite when logged in
         So that I can manage what deals appear on my favourites list.

Scenario:
  Scenario:
    Given I am logged in
    When I unmark a "Cadbury Fabulous Fingers 110g" deal from the "All Deals" category
    Then The deal is removed to my favourites
