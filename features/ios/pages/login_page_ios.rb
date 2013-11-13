require 'calabash-cucumber/ibase'

class LoginPage  < Calabash::IBase

  def trait
    "WebView css:'button#signinButton'"
  end

  def login(user)
    touch("WebView css:'input#email'")
    await_keyboard
    keyboard_enter_text(user[:email])
    touch("WebView css:'input#password'")
    await_keyboard
    keyboard_enter_text(user[:password])
    done
    touch("WebView css:'button#signinButton>span'")
    page(HomePage).await
  end
end
