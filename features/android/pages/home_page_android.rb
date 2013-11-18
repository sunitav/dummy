require 'calabash-android/abase'

class HomePage < Calabash::ABase

  def trait
    "CordovaWebView css:'p.hero'"
  end

  def select_category_my_favorite_deals
    touch("CordovaWebView css:'a.my-favourite-deals'")
    page(DealsPage).await
  end

  def select_all_deals
    touch("CordovaWebView css:'a[category-desc=\"All Deals\"]>span'")
    page(DealsPage).await
  end

  def select_category(category_name)
    touch("CordovaWebView css:'a[category-desc=\"#{category_name}\"]>span'")
    page(DealsPage).await
  end

  def show_menu
    unless menu_visible
      toggle_menu
      wait_for_animation
    end
  end

  def menu_visible
    element_exists("CordovaWebView css:'a[target=\"_self\"]'")
  end

  def toggle_menu
    touch("CordovaWebView css:'span.icon-dashboard'")
  end

  def click_signin
    touch "CordovaWebView css:'section.dashboard>ul>li:nth-child(4)>a'"
    wait_for_animation
    page(LoginPage).await
  end

  def logged_in?
    show_menu
    element_exists("CordovaWebView css:'a#logoutLink'")
  end

  def click_register
    touch("CordovaWebView css:'a#registerLink'")
    page(LoginPage).await
  end

  def click_link_my_favourite_deals
    show_menu
    touch("WebView css:'a#myFavouritesLink'")
    wait_for_animation
  end

  def Is_MyFavourite_Count_EqualTo?(count)
    q = query("CordovaWebView css:'.my-favourite-deals span[class=\"count ng-binding\"]'")
    q[0]["textContent"].eql?(count)
  end

end