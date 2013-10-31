require 'calabash-cucumber/operations'
require 'calabash-cucumber/core'

class LoginPage
  include Calabash::Cucumber::Operations

  def login(user, password)
    touch "CordovaWebView css:'input#email'"
    keyboard_enter_text user
    touch "CordovaWebView css:'input#password'"
    keyboard_enter_text password
    touch "CordovaWebView css:'button#signinButton>span'"
    #wait for login to happen
  end
end