require 'calabash-android/abase'

class LoginPage  < Calabash::ABase

  def trait
    "CordovaWebView css:'button#signinButton'"
  end

  def login(user)
    touch "CordovaWebView css:'input#email'"
    keyboard_enter_text(user[:email])
    touch "CordovaWebView css:'input#password'"
    keyboard_enter_text(user[:password])
    touch "CordovaWebView css:'button#signinButton>span'"
    wait_for(:timeout => 10) { element_exists("CordovaWebView css:'p.hero'") }
    #wait_for(:timeout =>2) {element_exists(HomePage.page_load)}
  end

  def self.email
    "CordovaWebView css:'input#email'"
  end

  def self.password
    "CordovaWebView css:'input#password'"
  end

  def self.signin
    "CordovaWebView css:'button#signinButton>span'"
  end
end
