#require 'calabash-cucumber/operations'
#require 'calabash-cucumber/core'
require 'calabash-android/abase'

class LoginPage < Calabash::ABase

  def trait
    "CordovaWebView css:'button#signinButton'"
  end

  def login(user)
    performAction("set_text", "css", 'input#email', user[:email])
    performAction("set_text", "css", 'input#password', user[:password])
    touch "CordovaWebView css:'button#signinButton>span'"
    wait_for_animation
  end
end