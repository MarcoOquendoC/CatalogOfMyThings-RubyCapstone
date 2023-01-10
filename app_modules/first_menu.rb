require_relative 'book/list_books'
require_relative 'music/list_music_albums'
require_relative 'game/list_games'
require_relative 'music/list_genres'
require_relative 'book/list_labels'
require_relative 'game/list_authors'
require_relative 'book/add_book'
require_relative 'music/add_music_album'
require_relative 'game/add_game'

module FirstMenu
  include ListBooks
  include ListMusicAlbums
  include ListGames
  include ListGenres
  include ListLabels
  include ListAuthors
  include AddBook
  include AddMusicAlbum
  include AddGame
  
  def first_menu
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
    puts "You selected the option #{selected_option}"
    process_option(selected_option)
  end
  
  def process_option(selected_option)
    unless [0,1,2,3,4,5,6,7,8,9].include?(selected_option)
      puts "hello error"
      run
    end
    
    if selected_option == 0
      puts 'Quiting the app'
      exit
    end
    
    list_books if selected_option == 1
    list_music_albums if selected_option == 2
    list_games if selected_option == 3
    list_genres if selected_option == 4
    list_labels if selected_option == 5
    lis_all_authors if selected_option == 6
    add_book if selected_option == 7
    add_music_album if selected_option == 8
    add_game if selected_option == 9
  end
end
