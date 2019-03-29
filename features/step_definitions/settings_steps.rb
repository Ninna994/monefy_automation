Given(/^User lands on home screen$/) do
  find_element(id: "transaction_type_button_layout")
end

When(/^User swipes from right to left$/) do
  Appium::TouchAction.new.swipe(start_x:0.99, start_y:0.5, end_x:0.5, end_y:0.5, duration: 600).perform
end

Then(/^User sees Right side menu$/) do
  find_element(id: "right_drawer")
end

And(/^User clicks on "([^"]*)" in right side menu$/) do |text|
  if text == "Settings"
    settings_button = find_element(id: "settings_textview")
    settings_button.click
  end
end

Then(/^User clicks on Currency "([^"]*)"$/) do |currency|
  currency_field = find_element(id: "currency_name")
  actual_text = currency_field.text
  fail("There is no currency #{currency} set") if actual_text != currency
  currency_field.click
end

And(/^User clicks "([^"]*)" from currency list$/) do |value|
  # find_element(xpath: "//android.widget.CheckedTextView[@text='#{value}']").click
  searchThroughRadioList(value)
end

When(/^User clicks on OK button on dialog$/) do
  find_element(id: "button1").click
end

Then(/^User is able to see value "([^"]*)" next to Currency$/) do |currency|
  currency_element = find_element(id: "currency_name")
  currency_text = currency_element.text
  fail("Expected currency is #{currency}, but actual currency is #{currency_text}") if currency != currency_text
end

When(/^User swipes from center to right$/) do
  Appium::TouchAction.new.swipe(start_x:0.5, start_y:0.5, end_x:0.99, end_y:0.5, duration: 600).perform
end

Then(/^User sees Balance with "([^"]*)" prefix$/) do |prefix|
  actual_text = find_element(id: "balance_amount").text
  text = "Balance #{prefix}0.00"
  fail("Course not changed to #{prefix}") if text != actual_text
end

Then(/^User clicks on Language "([^"]*)"$/) do |language|
  language_field = find_element(id: "language_name")
  actual_text = language_field.text
  fail("There is no language #{currency} ") if actual_text != language
  language_field.click
end

And(/^User sees "([^"]*)" as menu header text$/) do |text|
  title = find_element(id: "alertTitle")
  title_text = title.text
  fail("Right language isn't set") if text != title_text
end

And(/^User clicks "([^"]*)" from language list$/) do |language|
  searchThroughRadioList(language)
end

Then(/^User is able to see value "([^"]*)" next to Language$/) do |language|
  language_element = find_element(id: "language_name")
  language_text = language_element.text
  fail("Expected language is #{language}, but actual language is #{language_text}") if language != language_text
end

Then(/^User sees header text as "([^"]*)"$/) do |text|
  toolbar_text = find_element(xpath: "//android.widget.TextView[@text='#{text}']").text
  fail("Language didn't change") if text != toolbar_text

end
