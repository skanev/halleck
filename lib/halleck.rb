require 'halleck/init'

require 'uri'
require 'mongo'
require 'sinatra/base'

module Halleck
  autoload :App,      'halleck/app'
  autoload :Database, 'halleck/database'
  autoload :Gateway,  'halleck/gateway'
  autoload :User,     'halleck/user'
end
