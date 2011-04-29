require 'sinatra/base'

class Halleck < Sinatra::Base
  get '/' do
    "If wishes were fishes, we'd all cast nets."
  end
end
