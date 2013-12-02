require 'calabash-android/abase'

class Categories < Calabash::ABase

  def trait
    "CordovaWebView css:'h1[ng-bind=\"pageTitle\"]'"
  end

  def select_category(category_name)
    touch("CordovaWebView css:'a[category-desc=\"#{category_name}\"]>span'")
    page(DealsPage).await
  end

  def select_category_my_favorite_deals
    touch("CordovaWebView css:'a.my-favourite-deals'")
    page(DealsPage).await
  end

  def select_all_deals
    touch("CordovaWebView css:'a[category-desc=\"All Deals\"]>span'")
    page(DealsPage).await
  end

  def Is_MyFavourite_Count_EqualTo?(count)
    q = query("CordovaWebView css:'.my-favourite-deals span[class=\"count ng-binding\"]'")
    q[0]["textContent"].eql?(count)
  end

end