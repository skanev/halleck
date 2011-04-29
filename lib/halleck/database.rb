module Halleck
  module Database
    extend self

    def use(database)
      @database = database
    end

    def collection(collection_name)
      database.collection(collection_name)
    end

    private

    def database
      raise "No MongoDB database specified" unless @database
      @database
    end
  end
end
