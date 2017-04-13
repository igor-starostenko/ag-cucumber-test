class IdentificationPage < BasePage
  include AG::Form

  def fill_in_ssn(value)
    form.find('input[id*="SOCIALSECURITYNUMBER"]').set(value)
  end

end
