require 'securerandom'

class Label
  attr_accessor :title, :color
  attr_reader :items, :id

  def initialize(title, color, id = SecureRandom.uuid)
    @title = title
    @color = color
    @id = id
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.label = self
  end
end
