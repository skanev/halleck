require 'halleck'
require 'rspec'

Dir[File.join(File.dirname(__FILE__), 'support', '**', '*.rb')].each { |file| load file }

set :environment, :test

Halleck::Database.use Test::MongoDB.database
