
Given(/^I am on the Sign In Page$/) do
  homepage = HomePage.new
  homepage.select_menubar
  homepage.select_signin
end

When(/^I login as default user$/)do
  loginpage = LoginPage.new
  loginpage.login("sushmav@thoughtworks.com", "password")
  wait_for_animation
end

Then(/^I should be logged in$/) do
    pending
end

