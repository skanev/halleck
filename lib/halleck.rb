require 'halleck/init'

require 'uri'
require 'mongo'
require 'sinatra/base'

autoload :App,           'halleck/app'
autoload :Configuration, 'halleck/configuration'
autoload :Database,      'halleck/database'
autoload :Gateway,       'halleck/gateway'
autoload :User,          'halleck/user'
