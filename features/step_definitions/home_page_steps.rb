Given(/^I am logged in$/) do
  pending
end

When(/^I select a "([^"]*)" deal from the "([^"]*)" category$/) do |arg1, arg2|
  HomePage.select_category(arg2)
  HomePage.select_deal(arg1)
end

Then(/^The deal is added to My Favourite Deals$/) do
  pending
end