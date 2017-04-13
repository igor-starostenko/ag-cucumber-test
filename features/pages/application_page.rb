class ApplicationPage < BasePage
  include AG::Form

  def fill_in_first_name(value)
    form.fill_in('firstNameTextField', with: value)
  end

  def fill_in_last_name(value)
    form.fill_in('lastNameTextField', with: value)
  end

  def fill_in_dob(value)
    form.fill_in('dobTextField', with: value)
  end

  def fill_in_mobile_phone(value)
    form.fill_in('mobilePhoneTextField', with: value)
  end

  def fill_in_home_phone(value)
    form.fill_in('homePhoneTextField', with: value)
  end

  def click_log_in
    form.find('a', text: 'Log In', visible: false).click
  end

  def fill_in_email(value)
    form.fill_in('emailTextField', with: value)
  end

  def fill_in_password(value)
    form.fill_in('passwordTextField', with: value)
  end

  def click_log_in_and_continue
    form.find('button:not([disabled=""])',
              text: 'Log In and Continue',
              visible: false).click
  end

end
