# Generated by cucumber-sinatra. (2014-10-03 13:47:50 +0100)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'app/router.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Rockpaperscissors

class RockpaperscissorsWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  RockpaperscissorsWorld.new
end
