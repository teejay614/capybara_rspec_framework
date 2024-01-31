
require 'capybara/rspec'
require 'capybara/dsl'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome # or :selenium_firefox
end

RSpec.configure do |config|
  config.include Capybara::DSL
end
