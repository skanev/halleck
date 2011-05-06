module Configuration
  extend self

  def database
    case App.environment
    when :development
      Mongo::Connection.new('localhost').db('halleck_development')
    when :test
      Test::MongoDB.database
    end
  end
end
