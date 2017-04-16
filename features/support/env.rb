require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'rspec'
require 'selenium-webdriver'
require 'yaml'
require_relative '../modules/base_page.rb'
require_relative '../modules/form_module.rb'

config = YAML.load_file(File.dirname(__FILE__) + '/config.yml')

# 'prd' environment supported only. Use: cucumber TEST_ENV=prd
T_ENV = config[ENV['TEST_ENV']]
raise 'Need to specify the environment' unless T_ENV

DRIVER = ENV['DRIVER'].to_sym || :poltergeist

BASE_URL = T_ENV['base_url']
RESOLUTION = config['resolution'].split(':')
USER_AGENT = config['user_agent']
DEFAULT_TIMEOUT = config['default_max_timeout'].to_i
USER_EMAIL = T_ENV['email']
USER_PASSWORD = T_ENV['password']

Capybara.default_driver = DRIVER
Capybara.default_max_wait_time = DEFAULT_TIMEOUT
Capybara.register_driver DRIVER do |app|
  case DRIVER
  when :selenium
    capybara = Capybara::Selenium
    options = { browser: :chrome }
  when :poltergeist
    capybara = Capybara::Poltergeist
    options = {
      js_errors: false,
      window_size: [RESOLUTION.first, RESOLUTION.last],
      phantomjs_options:
        ['--load-images=yes',
         '--disk-cache=true',
         '--ignore-ssl-errors=no',
         '--ssl-protocol=any']
    }
  else
    raise "Not supported driver #{DRIVER}"
  end
  capybara::Driver.new(app, options)
end
