Then(/^The deal is saved to my favourites$/) do
  deal_page = page(DealPage)
  if !deal_page.deal_added_to_favourite
    screenshot_embed
    raise 'Deal was not added to Favourites'
  end

end