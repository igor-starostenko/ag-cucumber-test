Before do
  page.driver.headers = { 'User-Agent' => USER_AGENT }
end

After do |scenario|
  if scenario.failed?
    page.save_screenshot
    # page.save_page
  end
end
