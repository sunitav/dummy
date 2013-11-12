require 'calabash-android/abase'

class DealsPage  < Calabash::ABase

  def trait
    "CordovaWebView css:'h1[ng-bind=\"pageTitle\"]'"
  end

  def select_deal(deal_name)
    touch("CordovaWebView css:'a[deal-desc=\"#{deal_name}\"]'")

  end

  def favorite_deal(deal_name)
    touch("CordovaWebView css:'a[deal-desc=\"#{deal_name}\"]+a'")
  end

  def deal_added_to_favourite?
    element_exists("CordovaWebView css:'div.info-popup favourite'")
  end
end