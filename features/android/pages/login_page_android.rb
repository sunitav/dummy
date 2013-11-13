require 'calabash-android/abase'

class LoginPage  < Calabash::ABase

  def trait
    "CordovaWebView css:'button#signinButton'"
  end

  def login(user)
    touch email
    keyboard_enter_text(user[:email])
    touch password
    keyboard_enter_text(user[:password])
    touch "CordovaWebView css:'button#signinButton>span'"
    page(HomePage).await
  end

  def email
    "CordovaWebView css:'input#email'"
  end

  def password
    "CordovaWebView css:'input#password'"
  end

end