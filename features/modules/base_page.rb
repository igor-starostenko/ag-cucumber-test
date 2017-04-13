class BasePage
  include Capybara::DSL

  def initialize
    @header = '#content header'
  end

  def base_header
    find(@header)
  end

  def base_content
    find(@header + '+div>.container')
  end

  def base_status_bar
    find(@header + '+div>div:nth-child(1)')
  end

end
