def wait_for_animation
  sleep(0.6)
end

def keyboard_enter_text (input)
  system("adb shell input text #{input}")
end
