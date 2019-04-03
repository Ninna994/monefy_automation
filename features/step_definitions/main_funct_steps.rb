When(/^User click on Expenses button$/) do
  find_element(id: "expense_button_title").click
end

Then(/^User should see "([^"]*)" as header text$/) do |text|
  find_element(xpath: "//android.widget.TextView[@text='#{text}']")
  puts("I see #{text} as header text.")
end

When(/^User types "([^"]*)" "([^"]*)" in application keyboard$/) do |num1, num2|
  find_element(id: "buttonKeyboard" + num1).click
  find_element(id: "buttonKeyboard" + num2).click
  puts("I insert #{num1} #{num2} on keyboard.")
end

Then(/^"([^"]*)" should be displayed in green box$/) do |sum|
  actual_sum = find_element(id: "amount_text").text
  fail("Wrong input displayed. Expected #{sum} and got #{actual_sum}") if sum != actual_sum
  puts("Sum is #{sum}.")
end

When(/^User clicks on Choose category button$/) do
  find_element(id: "textViewChooseCategory").click
end

Then(/^User swipes up$/) do
  Appium::TouchAction.new.swipe(start_x:0.5, start_y:0.7, end_x:0.5, end_y:0.2, duration: 600).perform
end

And(/^User chooses "([^"]*)" option$/) do |option|
  text("#{option}").click
end

Then(/^User should see red amount as "([^"]*)"$/) do |amount|
  actual_amount = find_element(id: "expense_amount_text").text
  fail("Wrong amount. Expected #{amount} and got #{actual_amount}") if amount != actual_amount
  puts("Red amount is #{amount}.")
end

When(/^User click on Income button$/) do
  find_element(id: "income_button_title").click
end

Then(/^User should see green amount as "([^"]*)"$/) do |amount|
  actual_amount = find_element(id: "income_amount_text").text
  fail("Wrong amount. Expected #{amount} and got #{actual_amount}") if amount != actual_amount
  puts("Green amount is #{amount}.")
end

Then(/^User sees header as "([^"]*)"$/) do |text|
  find_element(xpath: "//android.widget.TextView[@text='#{text}']")
  puts("I see header text as #{text}.")
end

Then(/^User clicks on note field$/) do
  find_element(id: "textViewNote").click
end

Then(/^User types "([^"]*)"$/) do |text|
  find_element(id: "textViewNote").send_keys(text)
  puts("I type #{text}.")
end

When(/^User clicks on return button$/) do
  Appium::TouchAction.new.tap(x:0.99, y:0.99, count:1).perform
end

When(/^User presses transfer button$/) do
  find_element(id: "transfer_menu_item").click
end

Then(/^User clicks on Keyboard button at bottom of page$/) do
  find_element(id: "show_keyboard_fab").click
end

When(/^User clicks on Add Transfer button$/) do
  find_element(id: "relativeLayoutChooseCategory").click
end

And(/^User swipes from left to right$/) do
  sleep 1
  Appium::TouchAction.new.swipe(start_x:0.01, start_y:0.5, end_x:0.5, end_y:0.5, duration: 600).perform
end

Then(/^User should click on dropdown menu$/) do
  find_element(id: "account_spinner").click
end

And(/^User clicks on "([^"]*)" option$/) do |option|
  text("#{option}").click
end