#require 'calabash-cucumber/operations'
#require 'calabash-cucumber/core'
require 'calabash-android/abase'

class LoginPage < Calabash::ABase

  def trait
    "CordovaWebView css:'button#signinButton'"
  end

  def login(user)
    touch("CordovaWebView css:'input#email'")
    keyboard_enter_text(user[:email])
    touch("CordovaWebView css:'input#password'")
    keyboard_enter_text(user[:password])
    touch "CordovaWebView css:'button#signinButton>span'"
    wait_for_animation
  end
end