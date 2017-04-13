When(/^I fill in my employment information:$/) do |table|
  info = table.rows_hash
  if info.key?('Employment Status')
    @employment_page.select_employment_status(info['Employment Status'])
  end
  if info.key?('Employer Name')
    @employment_page.fill_in_employer(info['Employer Name'])
  end
  if info.key?('Title')
    @employment_page.fill_in_title(info['Title'])
  end
  if info.key?('Start Date')
    @employment_page.fill_in_start_date(info['Start Date'])
  end
  if info.key?('Employer Phone Number')
    @employment_page.fill_in_employer_phone(info['Employer Phone Number'])
  end
  if info.key?('Gross Monthly Income')
    @employment_page.fill_in_income(info['Gross Monthly Income'])
  end
end

When(/^I click "NEXT" button on the Employment page$/) do
  @employment_page.click_next_button
  @identification_page = IdentificationPage.new
end
