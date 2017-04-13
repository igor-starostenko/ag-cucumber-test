When(/^I fill in my residence information:$/) do |table|
  info = table.rows_hash
  if info.key?('Residence Status')
    @residence_page.select_residence_status(info['Residence Status'])
  end
  if info.key?('Address')
    @residence_page.fill_in_address(info['Address'])
  end
  if info.key?('Address (Line 2)')
    @residence_page.fill_in_address2(info('Address (Line 2)'))
  end
  if info.key?('City')
    @residence_page.fill_in_city(info['City'])
  end
  if info.key?('State')
    @residence_page.select_state(info['State'])
  end
  if info.key?('Zip Code')
    @residence_page.fill_in_zip_code(info['Zip Code'])
  end
  if info.key?('Move in Date')
    @residence_page.fill_in_move_in_date(info['Move in Date'])
  end
  if info.key?('Mortgage/Rent Payment')
    @residence_page.fill_in_payment(info['Mortgage/Rent Payment'])
  end
end

When(/^I click "NEXT" button on the Residence page$/) do
  @residence_page.click_next_button
  @employment_page = EmploymentPage.new
end
