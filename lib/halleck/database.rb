module Database
  extend self

  def collection(collection_name)
    database.collection(collection_name)
  end

  private

  def database
    Configuration.database
  end
end
