module AG
  module Form

    def page_name
      find('.application>div>span').text
    end

    def header
      form.find('h4').text
    end

    private

    def aside
      find('aside')
    end

    def form
      find('form')
    end

    def all_dropdowns
      dropdowns = 'button[style*="border-box"]'
      form.has_css?(dropdowns)
      form.find_all(dropdowns, visible: false)
    end

    def select_span(option)
      find('span', text: option, visible: false).click
    end
  end
end
