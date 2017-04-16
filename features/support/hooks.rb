Before do
  case Capybara.current_driver
  when :selenium
    # page.driver.browser.manage.window.maximize
    # page.driver.browser.manage.window.resize_to(RESOLUTION.first, RESOLUTION.last)
  when :poltergeist
    page.driver.headers = { 'User-Agent' => USER_AGENT }
  end
end

After do |scenario|
  if scenario.failed?
    page.save_screenshot
    # page.save_page
  end
end
