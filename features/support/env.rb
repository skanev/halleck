$:.unshift 'lib'

require 'halleck'

require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'cucumber/rspec/doubles'

Dir[File.join(File.dirname(__FILE__), '..', '..', 'spec', 'support', '**', '*.rb')].each { |file| load file }

set :environment, :test

Capybara.app = Halleck::App

Halleck::Database.use Test::MongoDB.database

Before do
  Test::MongoDB.reset
end
