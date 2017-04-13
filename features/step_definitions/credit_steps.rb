When(/^I click "START FINANCING" button$/) do
  @credit_page.click_start_financing
  @application_page = ApplicationPage.new
end
