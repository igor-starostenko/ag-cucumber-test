require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'rspec'
require 'yaml'
require_relative '../modules/base_page.rb'

config = YAML.load_file(File.dirname(__FILE__) + '/config.yml')

# 'prd' environment supported only. Use: cucumber TEST_ENV=prd
T_ENV = config[ENV['TEST_ENV']]
raise 'Need to specify the environment' unless T_ENV

BASE_URL = T_ENV['base_url']
RESOLUTION = config['resolution'].split(':')
USER_AGENT = config['user_agent']
DEFAULT_TIMEOUT = config['default_max_timeout'].to_i
USER_EMAIL = T_ENV['email']
USER_PASSWORD = T_ENV['password']

Capybara.default_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|
  options = {
    js_errors: false,
    timeout: DEFAULT_TIMEOUT,
    window_size: [RESOLUTION.first, RESOLUTION.last],
    phantomjs_options:
        ['--load-images=yes',
         '--disk-cache=true',
         '--ignore-ssl-errors=no',
         '--ssl-protocol=any']
  }
  Capybara::Poltergeist::Driver.new(app, options)
end
