Feature: : Mark Deal
  As a user I want to be able to mark a deal as a favourite when logged in
  So that I can manage what deals appear on my favourites list.
  Also, unmark the same and see if the deals are removed from My favourites.

  Scenario:
   Given I am logged in
   When I mark the following deals as favourites under the categories:
    |deal_name|category|
    |Bisto For Chicken Gravy Granules 170g|Food Cupboard|
    |The Co-operative Profiteroles 420g|Bakery & Desserts|
   Then I see the number of deals under My Favourites category on Categories Page as "2"
   And the following deals have been added to My Favourites:
    |deal_name|
    |Bisto For Chicken Gravy Granules 170g|
    |The Co-operative Profiteroles 420g|
    When I unfavourite the deal "Bisto For Chicken Gravy Granules 170g" from My Favourites page
    Then I should not see the deal "Bisto For Chicken Gravy Granules 170g" in My Favourites page
    And I should see the deal "The Co-operative Profiteroles 420g" in My Favourites page
    When I unfavourite the deal "The Co-operative Profiteroles 420g" from My Favourites page
    Then I see the number of deals under My Favourites category on Categories Page as "0"
    And I should not see the deal "The Co-operative Profiteroles 420g" in My Favourites page
    And I see the message "You have no deals saved as favourites.When you see a deal you like, you can save it to your favourites by tapping on the star." on My Favourites page


