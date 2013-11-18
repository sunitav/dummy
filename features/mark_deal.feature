Feature: : Mark Deal
  As a user I want to be able to mark a deal as a favourite when logged in
  So that I can manage what deals appear on my favourites list.

  Scenario:
   Given I am logged in
   When I mark the following deals as favourites under the categories:
    |deal_name                    |category      |
    |Cadbury Fabulous Fingers 110g|Food Cupboard |
    |The Co-operative Truly Irresistible Sticky Toffee Sponge Pudding 350g|Bakery & Desserts|
   Then I see the number of deals under My Favourites category on Home Page as "2"
   And the following deals have been added to My Favourites:
    |deal_name |
    |Cadbury Fabulous Fingers 110g|
    |The Co-operative Truly Irresistible Sticky Toffee Sponge Pudding 350g|

