#require 'calabash-cucumber/cucumber'
require 'calabash-android/abase'

class HomePage < Calabash::ABase

  def trait
     "CordovaWebView css:'p.hero'"
  end

  def select_my_favorite_deals
    touch("CordovaWebView css:'a.my-favourite-deals'")
    #need to add a wait for navigation here
    wait_for_animation
  end

  def select_all_deals
    touch("CordovaWebView css:'a[category-desc=\"All Deals\"]> span")
    #need to add a wait for navigation here
    wait_for_animation
  end

  def select_category(category_name)
    simple_touch("CordovaWebView css:'a[category-desc=\"#{category_name}\"]> span")
    #need to add a wait for navigation here
    wait_for_animation
  end

  def select_menubar
    #wait_for_animation
    touch("CordovaWebView css:'span.icon-dashboard'")
    wait_for_animation
  end

  def select_signin
    #touch("CordovaWebView css:'a#signInLink'")
    touch("CordovaWebView css:'section.dashboard>ul>li:nth-child(4)>a'")
    wait_for_animation
  end

end