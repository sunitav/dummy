require 'calabash-android/abase'

class CategoryPage < Calabash::ABase

  def trait

  end

  def select_deal(deal_name)
      touch("CordovaWebView css:'a[deal-desc=\"#{deal_name}\"]'")
       #need to add a wait for navigation here
    end

    def favorite_deal(deal_name)
       touch("CordovaWebView css:'a[deal-desc=\"#{deal_name}\"]+a'")
    end
end