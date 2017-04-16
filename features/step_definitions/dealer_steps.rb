When(/^I fill in the dealership address with: "(.*?)"$/) do |address|
  @dealer_page.map_search(address)
end

When(/^I select the (\d+) dealership$/) do |num|
  @dealer_page.select_dealership(num)
end

When(/^I click "SELECT THIS DEALER" button$/) do
  @dealer_page.click_select_dealer
  @credit_page = CreditPage.new
end
