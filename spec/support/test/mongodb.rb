module Test
  module MongoDB
    extend self

    HOST = 'localhost'
    DATABASE_NAME = 'halleck_test'

    def database
      connection.db(DATABASE_NAME)
    end

    def reset
      database.collection_names.each do |name|
        database.collection(name).remove
      end
    end

    private

    def connection
      @connection ||= Mongo::Connection.new(HOST)
    end
  end
end
