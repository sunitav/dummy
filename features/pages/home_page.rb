class HomePage

  def select_my_favorite_deals
    touch("CordovaWebView css:'a.my-favourite-deals'")
    #need to add a wait for some element here
  end

  def select_all_deals
    touch("CordovaWebView css:'a.'")
  end
end