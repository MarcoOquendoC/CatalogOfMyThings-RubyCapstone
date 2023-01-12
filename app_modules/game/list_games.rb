module ListGames
  def list_games
    puts '============================================================'
    if @games.empty?
      puts "\n No Games found"
      puts '============================================================'
    else
      puts "\n List of Game \n"
      @games.each_with_index do |game, index|
        puts "(#{index + 1}) The Game: #{game.name} has been published on #{game.publish_date}"
      end
    end
    puts '============================================================'
    puts 'Press any key to go back to the main menu'
    gets.chomp
    run
  end
end
