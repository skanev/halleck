require 'halleck'
require 'rspec'

Dir[File.join(File.dirname(__FILE__), 'support', '**', '*.rb')].each { |file| load file }

App.set :environment, :test

Database.use Test::MongoDB.database
