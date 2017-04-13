Then(/^I should see "([^"]*)" as a header of the page$/) do |header|
  expect(@identification_page.header).to match(header)
end

Then(/^I should see text "([^"]*)" on the page$/) do |text|
  expect(@identification_page.all_text).to include(text)
end
