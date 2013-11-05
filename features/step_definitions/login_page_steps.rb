
Given(/^I am on the Sign In Page$/) do
  homepage = page(HomePage).await
  homepage.select_menubar
  homepage.select_signin
end

When(/^I login as default user$/)do
  loginpage = page(LoginPage).await
  loginpage.login(USERS[:default])
  wait_for_animation
end

Then(/^I should be logged in$/) do
  if @page.is_a?(LoginPage)
    screenshot_embed
    raise "Was not logged in!"
  end
end

