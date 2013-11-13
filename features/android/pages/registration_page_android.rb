require 'calabash-android/abase'

class RegistrationPage  < Calabash::ABase

  def trait
    "CordovaWebView css:'button#signinButton'"
  end

  def register(user)
    touch "CordovaWebView css:'input#email'"
    keyboard_enter_text(user[:email])
    touch "CordovaWebView css:'input#password'"
    keyboard_enter_text(user[:password])
    touch "CordovaWebView css:'input#confirmPassword'"
    keyboard_enter_text(user[:confirm_password])
    touch "CordovaWebView css:'button#signupButton>span'"
    page(HomePage).await
  end

end
