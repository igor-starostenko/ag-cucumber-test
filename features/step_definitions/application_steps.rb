When(/^I fill in my personal information:$/) do |table|
  info = table.rows_hash
  @application_page.fill_in_first_name(info['First Name']) if info.key?('First Name')
  @application_page.fill_in_last_name(info['Last Name']) if info.key?('Last Name')
  @application_page.fill_in_dob(info['Date of Birth']) if info.key?('Date of Birth')
  @application_page.fill_in_mobile_phone(info['Mobile Phone']) if info.key?('Mobile Phone')
  @application_page.fill_in_home_phone(info['Home Phone']) if info.key?('Home Phone')
end

When(/^I click the "Log In" link$/) do
  @application_page.click_log_in
end

When(/^I fill in my user credentials$/) do
  @application_page.fill_in_email(USER_EMAIL)
  @application_page.fill_in_password(USER_PASSWORD)
end

When(/^I click "LOG IN AND CONTINUE" button$/) do
  @application_page.click_log_in_and_continue
  @residence_page = ResidencePage.new
end
