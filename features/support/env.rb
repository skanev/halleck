$:.unshift 'lib'
require 'halleck/init'

require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'cucumber/rspec/doubles'

require 'halleck'

Dir[File.join(File.dirname(__FILE__), '..', '..', 'spec', 'support', '**', '*.rb')].each { |file| load file }

App.set :environment, :test

Capybara.app = App

Before do
  Test::MongoDB.reset
end
