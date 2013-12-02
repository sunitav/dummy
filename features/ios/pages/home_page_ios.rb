require 'calabash-cucumber/ibase'

class HomePage < Calabash::IBase

  def trait
    "WebView css:'#carousel'"
  end

  def show_menu
    unless menu_visible?
      toggle_menu
      wait_for_animation
    end
  end

  def home_link
    "WebView css:'a[target=\\\"_self\\\"]'"
  end

  def menu_visible?
    element_exists(home_link)
  end

  def toggle_menu
    touch("WebView css:'span.icon-dashboard'")
  end

  def click_signin
    touch("WebView css:'a#signInLink'")
    page(LoginPage).await
  end

  def click_register
    touch("WebView css:'a#registerLink'")
    page(LoginPage).await
  end

  def click_home
    show_menu
    touch(home_link)
    wait_for_animation
    page(HomePage).await
  end

  def click_link_my_favourite_deals
    show_menu
    touch("WebView css:'a#myFavouritesLink'")
    wait_for_animation
  end

  def logged_in?
    show_menu
    element_exists("WebView css:'a#logoutLink'")
    toggle_menu
  end

  def navigateToCategoriesPage
    touch("WebView xpath:'//div[@class=\"home-deals\"]//li[contains(text(), \"By Category\")]'")
  end

end