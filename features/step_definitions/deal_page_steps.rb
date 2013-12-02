Then(/^I see the message "([^"]*)"$/) do |arg|
     pending
end

When(/^I return to Categories page from Deals page$/) do
  @deal_page = page(DealsPage).await
  @deal_page.click_back_link
  page(Categories).await
end

When(/^I mark the following deals as favourites under the categories:$/) do |table|
    @home_page = page(HomePage).await
    @home_page.navigateToCategoriesPage
    @categories_page = page(Categories).await
    table.hashes.each do |hash|
    @categories_page.select_category(hash[:category])
    @deal_page = page(DealsPage).await
    @deal_page.favorite_a_deal(hash[:deal_name])
    steps %Q{
      And I return to Categories page from Deals page
    }
     # Pending checking for msg.. Then I see the message ""
  end
end

When(/^the following deals have been added to My Favourites:$/) do |table|
  @categories_page = page(Categories).await
    @categories_page.select_category_my_favorite_deals
    @favourite_deals_page = page(DealsPage).await
    table.hashes.each do |hash|
      verify_deal_in_myfavourites(hash[:deal_name])
    end
end

def verify_deal_in_myfavourites(deal_name)
  unless @favourite_deals_page.is_deal_present?(deal_name)
    screenshot_embed(:label => "Mark Deal")
    fail(msg="Deal" + deal_name + "has not been added to My Favourites")
  end
end

When(/^I unfavourite the deal "([^"]*)" from My Favourites page$/) do |deal_name|
     @favourite_deals_page.unfavourite_a_deal(deal_name)
     steps %Q{
    And I return to Categories page from Deals page
  }
end

Then(/^I should not see the deal "([^"]*)" in My Favourites page$/) do |deal_name|
  @categories_page.select_category_my_favorite_deals
  @favourite_deals_page = page(DealsPage).await
  verify_deal_not_in_myfavourites(deal_name)
end


def verify_deal_not_in_myfavourites(deal_name)
    if @favourite_deals_page.is_deal_present?(deal_name)
    screenshot_embed(:label => "Mark Deal")
    fail(msg="Deal " + deal_name + " has not been removed from My Favourites")
  end
end


When(/^I should see the deal "([^"]*)" in My Favourites page$/) do |deal_name|
    verify_deal_in_myfavourites(deal_name)
end

When(/^I see the message "([^"]*)" on My Favourites page$/) do |msg|
  unless @favourite_deals_page.is_text_present?(msg)
  fail(msg="Message \"" + msg + "\" is not present on My Favourites")
  end
end