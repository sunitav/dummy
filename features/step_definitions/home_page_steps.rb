Given(/^I am logged in$/) do
  steps %Q{
    Given I am on the Sign In Page
    When I login as default user
    I should be logged in
  }
  pending
end

When(/^I mark a "([^"]*)" deal from the "([^"]*)" category$/) do |deal_name, category_name|
  homepage = HomePage.new
  homepage.select_category(category_name)
  # wait for category page to show
  category_page = CategoryPage.new
  category_page.favorite_deal(deal_name)
  wait_for_animation
end

Then(/^The deal is added to My Favourite Deals$/) do
  pending
end