require 'rubygems'
require 'sinatra'
require 'rspec'

require File.join(File.dirname(__FILE__), '..', 'lib', 'halleck.rb')

set :environment, :test
