require 'calabash-android/abase'

class HomePage < Calabash::ABase
  @@page_load = "CordovaWebView css:'p.hero'"

  def trait
    "CordovaWebView css:'p.hero'"
  end

  def select_my_favorite_deals
    touch("CordovaWebView css:'a.my-favourite-deals'")
    wait_for(:timeout => 5, :screenshot_on_error=>true) { element_exists(DealsPage.trait)}
  end

  def select_all_deals
    touch("CordovaWebView css:'a[category-desc=\"All Deals\"]>span'")
    wait_for(:timeout => 5, :screenshot_on_error=>true) { element_exists(DealsPage.trait)}
  end

  def select_category(category_name)
    touch("CordovaWebView css:'a[category-desc=\"#{category_name}\"]>span'")
    wait_for(:timeout => 5, :screenshot_on_error=>true) { element_exists(DealsPage.trait)}
  end

  def select_menubar
    touch("CordovaWebView css:'span.icon-dashboard'")
  end

  def select_signin
    touch "CordovaWebView css:'section.dashboard>ul>li:nth-child(4)>a'"
    wait_for(:timeout => 5, :screenshot_on_error=>true) { element_exists(LoginPage.email)}
  end

  def self.sign_in
    "CordovaWebView css:'section.dashboard>ul>li:nth-child(4)>a'"
  end

  def logged_in?
    select_menubar
  end

end