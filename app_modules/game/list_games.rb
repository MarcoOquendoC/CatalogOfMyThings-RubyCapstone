module ListGames
  def list_games
    greet_games

    puts '============================================================'
    if @games.empty?
      puts "\n No Games found"
      puts '============================================================'
    else
      puts "\n List of Games \n"
      @games.each_with_index do |game, index|
        print "(#{index + 1}) Game: #{game.label.title} by #{game.author.first_name} " \
              "#{game.author.last_name} has published on #{game.publish_date} \n"
      end
    end
    puts '============================================================'
    puts 'Press any key to go back to the main menu'
    gets.chomp
    run
  end

  def greet_games
    # Generated from https://edukits.co/text-art/ (duplicate \ to print them)
    puts '   _________    _____   ____   ______'
    puts '  / ___\\__  \\  /     \\_/ __ \\ /  ___/'
    puts ' / /_/  > __ \\|  Y Y  \\  ___/ \\___ \\ '
    puts ' \\___  (____  /__|_|  /\\___  >____  >'
    puts '/_____/     \\/      \\/     \\/     \\/ '
  end
end
