class ResidencePage < BasePage
  include AG::Form

  def select_residence_status(option)
    all_dropdowns.first.click
    select_span(option)
  end

  def fill_in_address(value)
    form.fill_in('aginputaddress', with: value)
  end

  def fill_in_address2(value)
    form.fill_in('aginputaddress2', with: value)
  end

  def fill_in_city(value)
    form.fill_in('aginputcity', with: value)
  end

  def select_state(option)
    all_dropdowns.last.click
    select_span(option)
  end

  def fill_in_zip_code(value)
    form.fill_in('aginputzip', with: value)
  end

  def fill_in_move_in_date(value)
    form.fill_in('aginputmoveindate', with: value)
  end

  def fill_in_payment(value)
    form.fill_in('aginputpayment', with: value)
  end

  def click_next_button
    form.find('button:not([disabled=""])',
              text: 'Next',
              visible: false).click
  end

end
