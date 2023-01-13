require_relative '../../game/preserve_data'

module AddGame
  def add_game
    print 'Enter the name of the game: '
    name = gets.chomp
    print 'Enter Game creator first name: '
    first_name = gets.chomp
    print 'Enter Game creator last name: '
    last_name = gets.chomp
    print 'Enter the Game genre: '
    genre_name = gets.chomp
    print 'Enter the publish date [yyyy-mm-dd]: '
    publish_date = gets.chomp
    print 'Is it a multiplayer game? [Y/N]: '
    multiplayer = gets.chomp.downcase
    case multiplayer
    when 'y'
      multiplayer = true
    when 'n'
      multiplayer = false
    else
      puts "\nIncorect choice, please press 'n'/'N' for false and 'y'/'N' for true"
    end
    print 'Enter the last time you played the game [yyyy-mm-dd]: '
    last_played_at = gets.chomp

    game = Game.new(multiplayer, last_played_at, publish_date)

    author = Author.new(first_name, last_name)
    author.add_item(game)

    label = Label.new(name, 'unknown')
    label.add_item(game)

    genre = Genre.new(genre_name)
    genre.add_item(game)

    @games << game unless @games.include?(game)
    @authors << author unless @authors.include?(author)
    @labels_list << label unless @labels_list.include?(author)
    PreserveGame.persist_game(game)
    puts '============================================================'
    puts "\nGame added successfully"
    puts '============================================================'
    puts 'Press any key to go back to the main menu'
    gets.chomp
    run
  end
end
