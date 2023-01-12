require_relative 'src/item'
require_relative 'app_modules/first_menu'
require_relative 'game/game'
require_relative 'game/author'
require_relative 'music/music_album'
require_relative 'music/genre'

class App
  include FirstMenu

  def initialize
    @games = []
    @authors = []
  end

  def run
    first_menu
    handle_option
    exit
  end
end

system('cls')
system('clear')
# Test the code for Game and Author classes
puts '___________Code to test Games___________'
game = Game.new('PES', true, '2020-10-10', '2020-10-10')
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
puts ath.items[0].author.first_name
puts ath.items[0].author.last_name

# Test the code for MusicAlbum and Genre classes
puts '_______Code to test Music Albums________'
music_album = MusicAlbum.new('2020-10-10', true, 'Music Album Name', on_spotify: false)
genre = Genre.new('Rock')
genre.add_item(music_album)
puts "id: #{genre.items[0].id}"
puts "publish date: #{genre.items[0].publish_date}"
puts "Archived: #{genre.items[0].archived}"
puts "Name: #{genre.items[0].name}"
puts "On Spotify: #{genre.items[0].on_spotify}"
puts "Genre Name: #{genre.name}"
