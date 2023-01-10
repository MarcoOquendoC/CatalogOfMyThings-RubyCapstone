require_relative 'src/item'

class App
  def run
    item = Item.new
    puts 'item.publish_date'
    puts item.publish_date
    puts 'item.id'
    puts item.id
    puts 'item.can_be_archived'
    puts item.can_be_archived?
    puts 'item.genre'
    puts item.genre
  end
end
