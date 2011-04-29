require 'rubygems'
require 'sinatra'
require 'rspec'

require File.join(File.dirname(__FILE__), '..', 'lib', 'halleck.rb')

Dir[File.join(File.dirname(__FILE__), 'support', '**', '*.rb')].each { |file| load file }

set :environment, :test

Halleck::Database.use Test::MongoDB.database
