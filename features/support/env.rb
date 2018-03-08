require 'rspec'
require 'airborne'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'mongo'

require_relative 'api'

World(Api)

Capybara.configure do |c|
  c.default_driver = :selenium
  c.app_host = 'https://organinja.herokuapp.com'
end

Capybara.default_max_wait_time = 10


