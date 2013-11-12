require 'calabash-cucumber/ibase'

class HomePage < Calabash::IBase

  def trait
    "CordovaWebView css:'p.hero'"
  end

  def select_my_favorite_deals
    touch("WebView css:'a.my-favourite-deals'")
    #need to add a wait for navigation here
    wait_for_animation
  end

  def select_all_deals
    touch("WebView css:'a[category-desc=\\\"All Deals\\\"]>span'")
    #need to add a wait for navigation here
    wait_for_animation
  end

  def select_category(category_name)
    touch("WebView css:'a[category-desc=\\\"#{category_name}\\\"]>span'")
    #need to add a wait for navigation here
    wait_for_animation
  end

  def select_menubar
    touch("WebView css:'span.icon-dashboard'")
    wait_for_animation
  end

  def select_signin
    touch("WebView css:'a#signInLink'")
    wait_for_animation
  end

end