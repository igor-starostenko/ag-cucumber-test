class TrimPage < BasePage

  def select_lease
    base_content.click_button('Lease')
  end

  def select_loan
    base_content.click_button('Loan')
  end

  def select_car(car)
    list_of_cars.find('div', text: car, match: :first).click
  end

  def lease_cost
    deals.find('div.col-xs-6', text: 'LEASE').find('div:nth-child(2)').text
  end

  def lease_term
    deals.find('div.col-xs-6', text: 'LEASE').find('div:nth-child(3)').text
  end

  def click_select_lease
    base_content.click_button('SELECT LEASE')
  end

  private

  def list_of_cars
    base_content.find('.clearfix+.container-fluid')
  end

  def deals
    base_content.find('.row>.clearfix:nth-child(2)')
  end

end
