Given(/^I am logged in$/) do
  steps %Q{
    Given I am on the Sign In Page
    When I login as default user
    }
end

Given(/^I am on the Sign In Page$/) do
  homepage = page(HomePage).await
  homepage.show_menu
  homepage.click_signin
end

When(/^I login as default user$/)do
  loginpage = page(LoginPage).await
  loginpage.login(USERS[:default])
end

Then(/^I should be logged in$/) do
  homepage = page(HomePage).await
  homepage.logged_in?
end

