require 'calabash-android/abase'

class DealsPage  < Calabash::ABase

  def trait
    "CordovaWebView css:'h1[ng-bind=\"pageTitle\"]'"
  end

  def select_deal(deal_name)
    touch("CordovaWebView css:'a[deal-desc=\"#{deal_name}\"]'")
  end

  def favorite_a_deal(deal_name)
    touch("CordovaWebView css:'a[deal-desc=\"#{deal_name}\"]+a'")
  end

  def msg_deal_added_to_favourite
    element_exists("CordovaWebView css:'div.info-popup favourite'")
  end

  def is_deal_present?(deal_name)
    q=element_exists("CordovaWebView css:'a[deal-desc=\"#{deal_name}\"]'")
  end

  def is_text_present?(msg)
    q = query("CordovaWebView css:'.listview-item.no-deals'")
    q[0]["textContent"].strip.eql?(msg)
  end

  def click_back_link
    touch("CordovaWebView css:'.icon-back>span'")
    wait_for_animation
  end

  def unfavourite_a_deal(deal_name)
    touch("CordovaWebView css:'a[deal-desc=\"#{deal_name}\"]+a'")
  end
end