When(/^I select "([^"]*)" option$/) do |option|
  case option.downcase
  when 'lease'
    @trim_page.select_lease
  when 'loan'
    @trim_page.select_loan
  else
    raise 'Not supported option'
  end
end

When(/^I select "([^"]*)" car$/) do |car|
  @trim_page.select_car(car)
end

Then(/^I can see the lease cost$/) do
  lease_cost = @trim_page.lease_cost
  expect(lease_cost).to_not be nil
  puts lease_cost
end

Then(/^I can see the lease term$/) do
  lease_term = @trim_page.lease_term
  expect(lease_term).to_not be nil
  puts lease_term
end

When(/^I click on "SELECT LEASE" button$/) do
  @trim_page.click_select_lease
  @dealer_page = DealerPage.new
end
