
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

