require 'appium_lib'
require 'pry'
#capabilities
def caps
  {
      caps:{
          deviceName: "Nina",
          platformName: "Android",
          app: (File.join(File.dirname(__FILE__ ), "base.apk")),
          appPackage: "com.monefy.app.lite",
          appActivity: "com.monefy.activities.main.MainActivity_",
          newCommandTimeout: "3600"
      }
  }
end
Appium::Driver.new(caps, true)
#appium lib access
Appium.promote_appium_methods Object
#funkcija za listanje liste
def searchThroughRadioList(value)
  14.times{Appium::TouchAction.new.swipe(start_x:0.5, start_y:0.2, end_x:0.5, end_y:0.8, duration:600 ).perform}
  current_screen = get_source
  previous_screen = ""

  until (exists{find_element(xpath: "//android.widget.CheckedTextView[@text='#{value}']")}) || (current_screen == previous_screen) do
    Appium::TouchAction.new.swipe(start_x:0.5, start_y:0.8, end_x:0.5, end_y:0.2, duration:600 ).perform
    #dodeljivanje vrednosti
    previous_screen = current_screen
    current_screen = get_source
  end
  if exists{find_element(xpath: "//android.widget.CheckedTextView[@text='#{value}']")}
    find_element(xpath: "//android.widget.CheckedTextView[@text='#{value}']").click
  else
    fail("Element with #{value} value not found")
  end
  end

