When(/^User click on Expenses button$/) do
  find_element(id: "expense_button_title").click
end

Then(/^User should see "([^"]*)" as header text$/) do |text|
  find_element(xpath: "//android.widget.TextView[@text='#{text}']")
end

When(/^User types "([^"]*)" "([^"]*)" in application keyboard$/) do |num1, num2|
  find_element(id: "buttonKeyboard" + num1).click
  find_element(id: "buttonKeyboard" + num2).click
end

Then(/^"([^"]*)" should be displayed in green box$/) do |sum|
  actual_sum = find_element(id: "amount_text").text
  fail("Wrong input displayed. Expected #{sum} and got #{actual_sum}") if sum != actual_sum
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
end

When(/^User click on Income button$/) do
  find_element(id: "income_button_title").click
end

Then(/^User should see green amount as "([^"]*)"$/) do |amount|
  actual_amount = find_element(id: "income_amount_text").text
  fail("Wrong amount. Expected #{amount} and got #{actual_amount}") if amount != actual_amount
end

And(/^User sees Balance amount updated to "Balance -£20.00"$/) do |amount|

end


Then(/^User sees header as "([^"]*)"$/) do |text|
  find_element(xpath: "//android.widget.TextView[@text='#{text}']")
end


Then(/^User clicks on note field$/) do
  find_element(id: "textViewNote").click
end

Then(/^User types "([^"]*)"$/) do |text|
  find_element(id: "textViewNote").send_keys(text)
end

When(/^User clicks on return button$/) do
  Appium::TouchAction.new.tap(x:0.99, y:0.99, count:1).perform
end