require_relative 'src/item'
require_relative 'app_modules/first_menu'
require_relative 'game/game'
require_relative 'game/author'
require_relative 'music/music_album'
require_relative 'music/genre'
require_relative 'game/preserve_data'
require_relative 'book/book'
require_relative 'book/label'

class App
  include FirstMenu

  def initialize
    @games = PreserveGame.load_games
    @authors = PreserveGame.load_authors
    @genres = []
    @music_albums = []
  end

  def run
    first_menu
    handle_option
    exit
  end
end
