require 'securerandom'
require_relative 'preserve_genre'

class Genre
  include PreserveGenre

  attr_accessor :name, :items
  attr_reader :id

  def initialize(name, id = SecureRandom.uuid)
    @id = id
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre = self
  end
end
