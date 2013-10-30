class HomePage

  def select_my_favorite_deals
    touch("CordovaWebView css:'a.my-favourite-deals'")
    #need to add a wait for navigation here
  end

  def select_all_deals
    touch("CordovaWebView css:'a[category-desc=\"All Deals\"]> span")
    #need to add a wait for navigation here
  end

  def select_category(category_name)
    touch("CordovaWebView css:'a[category-desc=\"#{category_name}\"]> span")
    #need to add a wait for navigation here
  end


end