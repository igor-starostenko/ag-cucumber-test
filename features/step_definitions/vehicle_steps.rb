Given(/^I navigate to the Vehicle page$/) do
  @vehicle_page = VehiclePage.new
  @vehicle_page.visit_page
end

When(/^I select "([^"]*)" make in ([^"]*)$/) do |make, category|
  case category.downcase
  when 'featured'
    @vehicle_page.select_make_in_featured(make)
  when 'all'
    @vehicle_page.select_make_in_all(make)
  else
    raise 'Not supported category'
  end
  @model_page = ModelPage.new
end
