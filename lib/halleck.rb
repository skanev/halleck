require 'uri'
require 'mongo'
require 'sinatra/base'

class Halleck < Sinatra::Base
  get '/' do
    connection = Mongo::Connection.from_uri(ENV['MONGOHQ_URL'])
    path = URI.parse(ENV['MONGOHQ_URL']).path.gsub(/^\//, '')
    db = connection.db path

    db['quotes'].find_one['text']
  end
end
