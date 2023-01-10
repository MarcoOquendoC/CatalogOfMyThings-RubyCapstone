require_relative 'src/item'
require_relative 'app_modules/first_menu'
require_relative 'game/game'
require_relative 'game/author'

class App
  include FirstMenu

  def run
    first_menu
    handle_option
    exit
  end
end

# Test
game = Game.new('2020-10-10', true, true, '2020-10-10')
ath = Author.new('John', 'Doe')
ath.add_item(game)
puts "id: #{ath.items[0].id}"
puts "publish date: #{ath.items[0].publish_date}"
puts "Archived: #{ath.items[0].archived}"
puts "Multiplayer: #{ath.items[0].multiplayer}"
puts "Last_played: #{ath.items[0].last_played_at}"
puts "Archived: #{ath.items[0].archived}"
puts ath.first_name
puts ath.last_name
