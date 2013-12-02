Then(/^I see the number of deals under My Favourites category on Categories Page as "([^"]*)"$/) do |deals_count|
  categories_page = page(Categories).await
  unless categories_page.Is_MyFavourite_Count_EqualTo?(deals_count)
    fail(msg="Count of deals under My Favourites category is not correct")
  end
end