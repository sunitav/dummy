require 'calabash-cucumber/ibase'

class DealsPage < Calabash::IBase

  def trait
    "WebView css:'h1[ng-bind=\"pageTitle\"]'"
  end

  def select_deal(deal_name)
    touch("WebView css:'a[deal-desc=\\\"#{deal_name}\\\"]'")
    wait_for_animation
  end

  def favorite_deal(deal_name)
    touch("WebView css:'a[deal-desc=\\\"#{deal_name}\\\"]+a'")
    wait_for_animation
  end

  def deal_added_to_favourite? deal_name
    query("WebView css:'ul[class=\\\"deals list\\\"]'")
  end
end