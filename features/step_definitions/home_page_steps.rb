

When(/^I mark a "([^"]*)" deal from the "([^"]*)" category$/) do |deal_name, category_name|
  homepage = page(HomePage).await
  homepage.select_category(category_name)
  wait_for_animation
  category_page = page(DealPage).await
  category_page.favorite_deal(deal_name)
  wait_for_animation
end

Then(/^The deal is added to My Favourite Deals$/) do
  pending
end

When(/^I launch the application$/) do
  pending
end

Then(/^I see the Deals$/) do
  pending
end