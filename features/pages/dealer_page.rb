class DealerPage < BasePage

  def map_search(address)
    map.find('[type="text"]').send_keys(address).native.send_keys(:return)
  end

  def select_dealership(num)
    list_of_dealers.find(".list-group-item:nth-child(#{num})").click
  end

  def click_select_dealer
    base_content.click_button('Select this Dealer')
  end

  private

  def map
    base_content.find('h4+[class^="map_"]')
  end

  def list_of_dealers
    base_content.find('.list-group')
  end
end
