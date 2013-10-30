Feature: Mark Deal
  As a user I want to be able to mark a deal as a favourite when logged in
  So that I can manage what deals appear on my favourites list.

  Scenario:
    Given I am logged in
    When I select a "Dole Fruit Snack Apple 90g" deal from the "Bakery & Desserts" category
    Then The deal is added to My Favourite Deals
