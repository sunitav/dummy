require 'calabash-cucumber/ibase'

class RegistrationPage  < Calabash::IBase

  def trait
    "CordovaWebView css:'button#signinButton'"
  end

  def register(user)
    touch "WebView css:'input#email'"
    keyboard_enter_text(user[:email])
    touch "WebView css:'input#password'"
    keyboard_enter_text(user[:password])
    touch "WebView css:'input#confirmPassword'"
    keyboard_enter_text(user[:confirm_password])
    done
    touch "WebView css:'button#signupButton>span'"
    page(HomePage).await
  end

end
