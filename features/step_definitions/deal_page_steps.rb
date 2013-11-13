When(/^I mark a "([^"]*)" deal from the "([^"]*)" category$/) do |deal_name, category_name|
  @homepage = page(HomePage).await
  @homepage.select_category(category_name)
  @deal_page = page(DealsPage).await
  @deal_page.favorite_deal(deal_name)
end

Then(/^The deal is added to My Favourite Deals$/) do
  @homepage.show_menu
  @homepage.click_my_favourites
  #TODO Validate that the deal is added to the favourite
end


Then(/^The deal is saved to my favourites$/) do
  unless @deal_page.deal_added_to_favourite?
    screenshot_embed(:label=>"Mark Deal")
    raise 'Deal was not added to Favourites'
  end
end
