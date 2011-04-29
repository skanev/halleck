require 'uri'
require 'mongo'
require 'sinatra/base'

module Halleck
  autoload :App,      'halleck/app'
  autoload :Database, 'halleck/database'
  autoload :User,     'halleck/user'
end
