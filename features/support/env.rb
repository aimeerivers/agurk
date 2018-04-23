require 'capybara/cucumber'
require 'capybara/rspec'

Capybara.app_host = 'https://www.dr.dk'
Capybara.default_driver = :selenium
