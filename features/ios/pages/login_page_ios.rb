require 'calabash-cucumber/ibase'

class LoginPage  < Calabash::IBase

  def trait
    "WebView css:'button#signinButton'"
  end

  def login(user)
    touch("WebView css:'input#email'")
    wait_for_animation
    keyboard_enter_text(user[:email])
    touch("WebView css:'input#password'")
    wait_for_animation
    keyboard_enter_text(user[:password])
    wait_for_animation
    touch("WebView css:'button#signinButton>span'")
    done
    wait_for(:timeout => 2) { element_exists("WebView css:'p.hero'") }
  end
end
