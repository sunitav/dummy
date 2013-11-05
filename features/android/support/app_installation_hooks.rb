require 'calabash-android/operations'
require 'calabash-android/management/app_installation'

AfterConfiguration do |config|
  path = File.expand_path(ENV["APP_PATH"])
  @@toadlane = Calabash::Android::Operations::Device.new(
      self, nil, "34777", path, test_server_path(path), 7102)

  end

Before do
  if !$done
    @@toadlane.reinstall_apps
    @@toadlane.start_test_server_in_background
    $done=true
    sleep(40)
  end

  #After do |scenario|
  #  if scenario.failed?
  #    screenshot_embed
  #  end
  #end
end