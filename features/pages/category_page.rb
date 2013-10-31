require 'calabash-cucumber/operations'
require 'calabash-cucumber/core'

class CategoryPage
  include Calabash::Cucumber::Operations

    def select_deal(deal_name)
      touch("CordovaWebView css:'a[deal-desc=\"#{deal_name}\"]'")
       #need to add a wait for navigation here
    end

    def favorite_deal(deal_name)
       touch("CordovaWebView css:'a[deal-desc=\"#{deal_name}\"]+a'")
    end
end