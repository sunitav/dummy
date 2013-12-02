require 'calabash-cucumber/ibase'

class DealsPage < Calabash::IBase

  def trait
    "WebView css:'h1[ng-bind=\"pageTitle\"]'"
  end

  def select_deal(deal_name)
    touch("WebView css:'a[deal-desc=\\\"#{deal_name}\\\"]'")
    wait_for_animation
  end

  def favorite_a_deal(deal_name)
    scroll("WebView" ,:down)
    touch("WebView css:'a[deal-desc=\\\"#{deal_name}\\\"]+a'")
    wait_for_animation
  end

  def deal_added_to_favourite? deal_name
    query("WebView css:'ul[class=\\\"deals list\\\"]'")
  end

  def is_deal_present?(deal_name)
    element_exists("WebView css:'a[deal-desc=\"#{deal_name}\"]'")
  end

  def click_back_link
    touch("WebView css:'.icon-back>span'")
    wait_for_animation
  end

  def is_text_present?(msg)
    q = query("WebView css:'.listview-item.no-deals'")
    q[0]["textContent"].strip.eql?(msg)
  end

  def unfavourite_a_deal(deal_name)
    touch("WebView css:'a[deal-desc=\"#{deal_name}\"]+a'")
  end

  end