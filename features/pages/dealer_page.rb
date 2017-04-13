class DealerPage < BasePage

  def select_dealership(num)
    list_of_dealers.find(".list-group-item:nth-child(#{num})").click
  end

  def click_select_dealer
    base_content.click_button('Select this Dealer')
  end

  private

  def list_of_dealers
    base_content.find('.list-group')
  end
end
