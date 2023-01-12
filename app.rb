require_relative 'src/item'
require_relative 'app_modules/first_menu'
require_relative 'game/game'
require_relative 'game/author'
require_relative 'music/music_album'
require_relative 'music/genre'
require_relative 'book/book'
require_relative 'book/label'


class App
  def initialize()
    @books_list = []
    @labels_list = []
  end

  include FirstMenu

  def run
    first_menu
    handle_option
    exit
  end
end

system('cls')
system('clear')
