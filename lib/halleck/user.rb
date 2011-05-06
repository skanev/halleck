class User
  attr_reader :name, :twitter_id

  def initialize(attributes)
    attributes.each do |key, value|
      instance_variable_set "@#{key}", value
    end
  end

  def id
    @_id
  end

  class << self
    def create(attributes)
      collection.insert({
        'name'       => attributes[:name],
        'macs'       => attributes[:macs],
        'twitter_id' => attributes[:twitter_id],
      })
    end

    def register(attributes)
      create attributes

      twitter_id = attributes['twitter_id'] || attributes[:twitter_id]
      new collection.find_one('twitter_id' => twitter_id)
    end

    def find(id)
      new collection.find_one('_id' => id)
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
