class ModelPage < BasePage

  def select_model(model)
    base_content.find('.row h5', text: model).click
  end
end
