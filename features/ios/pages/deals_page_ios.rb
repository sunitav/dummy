require 'calabash-cucumber/ibase'

class DealsPage < Calabash::IBase

  def trait
    "WebView css:'h1[ng-bind=\"pageTitle\"]'"
  end

  def select_deal(deal_name)
    touch("WebView css:'a[deal-desc=\"#{deal_name}\"]'")
  end

  def favorite_deal(deal_name)
    touch("WebView css:'a[deal-desc=\"#{deal_name}\"]+a'")
  end

  def deal_added_to_favourite
    element_exists("WebView css:'div.info-popup favourite'")
  end
end