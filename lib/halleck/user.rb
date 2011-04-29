module Halleck
  class User
    attr_reader :name

    def initialize(attributes)
      @name = attributes[:name]
    end

    class << self
      def create(attributes)
        collection.insert 'name' => attributes[:name], 'macs' => attributes[:macs]
      end

      def with_mac(mac)
        document = collection.find_one 'macs' => mac
        User.new name: document['name'] if document
      end

      private

      def collection
        Database.collection('users')
      end
    end
  end
end

