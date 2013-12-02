require 'calabash-android/abase'

class HomePage < Calabash::ABase

  def trait
    "CordovaWebView css:'#carousel'"
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
    touch "CordovaWebView css:'section.dashboard>ul>li:nth-child(5)>a'"
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
    touch("CordovaWebView css:'a#myFavouritesLink'")
    wait_for_animation
  end

  def navigateToCategoriesPage
    touch("CordovaWebView xpath:'//div[@class=\"home-deals\"]//li[contains(text(), \"By Category\")]'")
  end

end