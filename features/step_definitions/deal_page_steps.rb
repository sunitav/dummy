Then(/^I see the message "([^"]*)"$/) do |arg|
     pending
end

When(/^I return to Home page from Deals page$/) do
  @deal_page = page(DealsPage).await
  @deal_page.click_back_link
  page(HomePage).await
end

When(/^I mark the following deals as favourites under the categories:$/) do |table|
   table.hashes.each do |hash|
    @homepage = page(HomePage).await
    @homepage.select_category(hash[:category])
    @deal_page = page(DealsPage).await
    @deal_page.favorite_a_deal(hash[:deal_name])
    steps %Q{
      And I return to Home page from Deals page
    }
     # Pending checking for msg.. Then I see the message ""
  end
end

When(/^the following deals have been added to My Favourites:$/) do |table|
  homepage = page(HomePage).await
    homepage.select_category_my_favorite_deals
    favourite_deals_page = page(DealsPage).await
    table.hashes.each do |hash|
    unless favourite_deals_page.is_deal_present?(hash[:deal_name])
      screenshot_embed(:label=>"Mark Deal")
      fail(msg="Deal" + hash[:deal_name] +  "has not been added to My Favourites")
    end
    end
end
