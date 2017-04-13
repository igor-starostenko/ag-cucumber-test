class EmploymentPage < BasePage
  include AG::Form

  def select_employment_status(option)
    all_dropdowns.first.click
    select_span(option)
  end

  def fill_in_employer(value)
    form.fill_in('employer-name', with: value)
  end

  def fill_in_title(value)
    form.fill_in('employee-title', with: value)
  end

  def fill_in_employer_phone(value)
    form.fill_in('employer-phone-number', with: value)
  end

  def fill_in_start_date(value)
    form.fill_in('employee-start-date', with: value)
  end

  def fill_in_income(value)
    form.fill_in('gross-monthly-income', with: value)
  end

  def click_next_button
    form.find('button:not([disabled=""])',
              text: 'Next',
              visible: false).click
  end
end
