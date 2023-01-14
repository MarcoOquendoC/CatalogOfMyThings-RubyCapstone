require 'securerandom'

class Author
  attr_accessor :first_name, :last_name, :id, :items

  def initialize(first_name, last_name, id = SecureRandom.random_number(1000))
    @id = id
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    @items << item
    item.author = self
  end
end
