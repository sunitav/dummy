Given(/^I am on the registration page$/) do
  homepage = page(HomePage).await
  homepage.show_menu
  homepage.click_register
end

When(/^I launch the application$/) do
  pending
end

Then(/^I see the Deals$/) do
  pending
end

Then(/^I see the number of deals under My Favourites category on Home Page as "([^"]*)"$/) do |deals_count|
  homepage = page(HomePage).await
  unless homepage.Is_MyFavourite_Count_EqualTo?(deals_count)
    fail(msg="Count of deals under My Favourites category is not correct")
  end
end
