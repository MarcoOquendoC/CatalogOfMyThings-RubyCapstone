require_relative 'process_option'
require_relative 'book/list_books'
require_relative 'music/list_music_albums'
require_relative 'game/list_games'
require_relative 'music/list_genres'
require_relative 'book/list_labels'
require_relative 'game/list_authors'
require_relative 'book/add_book'
require_relative 'music/add_music_album'
require_relative 'game/add_game'
require_relative 'greetings'
require_relative 'goodbye'

module FirstMenu
  include ProcessOption
  include ListBooks
  include ListMusicAlbums
  include ListGames
  include ListGenres
  include ListLabels
  include ListAuthors
  include AddBook
  include AddMusicAlbum
  include AddGame
  include Greetings
  include Goodbye

  def first_menu
    greet
    puts "Menu: Please choose an option\n"
    puts '1.- List all books'
    puts '2.- List all music albums'
    puts '3.- List of games'
    puts "4.- List all genres (e.g 'Comedy', 'Thriller')"
    puts "5.- List all labels (e.g. 'Gift', 'New')"
    puts "6.- List all authors (e.g. 'Stephen King')"
    puts '7.- Add a book'
    puts '8.- Add a music album'
    puts '9.- Add a game'
    puts '0.- Exit'
  end

  def handle_option
    print 'Option: '
    selected_option = gets.chomp.to_i
    system('clear')
    system('cls')
    quit_app if selected_option.zero?
    process_option(selected_option)
  end

  def quit_app
    puts 'Thank you for using the app!'
    goodbye
    exit
  end
end
