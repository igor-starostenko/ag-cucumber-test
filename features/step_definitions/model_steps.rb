When(/^I select "([^"]*)" model$/) do |model|
  @model_page.select_model(model)
  @trim_page = TrimPage.new
end
