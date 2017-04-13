class VehiclePage < BasePage

  def visit_page
    visit "#{BASE_URL}/vehicle"
  end

  def select_make_in_featured(make)
    featured_makes.find('img+h5', text: make, visible: false).click
  end

  def select_make_in_all(make)
    all_makes.find('img+h5', text: make, visible: false).click
  end

  private

  def makes
    base_content.find('.container-fluid:nth-child(2)')
  end

  def featured_makes
    makes.find('div:nth-child(2).row')
  end

  def all_makes
    makes.find('div:nth-child(4).row')
  end
end
