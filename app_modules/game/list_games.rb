module ListGames
  def list_games
    puts '============================================================'
    if @games.empty?
      puts "\n No Games found"
      puts '============================================================'
    else
      puts "\n List of Games \n"
      @games.each_with_index do |game, index|
        puts "\n#{index + 1}). The game: #{game['name']} by #{game['author']['first_name']}
        #{game['author']['last_name']} was published on #{game['publish_date']}"
      end
    end
    puts '============================================================'
    puts 'Press any key to go back to the main menu'
    gets.chomp
    run
  end
end
