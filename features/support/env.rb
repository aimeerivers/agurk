require 'capybara/cucumber'
require 'capybara/rspec'
require 'retriable'

Capybara.app_host = 'https://www.dr.dk'
Capybara.default_driver = :selenium

Retriable.configure do |c|
  c.on = RSpec::Expectations::ExpectationNotMetError
  c.base_interval = 0.1
  c.tries = 50
end
