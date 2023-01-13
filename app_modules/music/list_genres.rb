module ListGenres
  def list_genres
    greet_genres

    @genres.map do |genre|
      items = genre.items.map { |item| "#{item.class.name} - #{item.label.title}" }
      puts '{'
      puts "  ID: #{genre.id}"
      puts "  Name: #{genre.name}"
      puts "  Items: #{items}"
      puts '}'
    end

    puts 'press enter to continue'
    gets
    system('clear')
    system('cls')
    run
  end

  def greet_genres
    # Generated from https://edukits.co/text-art/ (duplicate \ to print them)
    puts '.____    .__          __      ________                                    '
    puts '|    |   |__| _______/  |_   /  _____/  ____   ___________   ____   ______'
    puts '|    |   |  |/  ___/\\   __\\ /   \\  ____/ __ \\ /    \\_  __ \\_/ __ \\ /  ___/ '
    puts '|    |___|  |\\___ \\  |  |   \\    \\_\\  \\  ___/|   |  \\  | \\/\\  ___/ \\___ \\ '
    puts '|_______ \\__/____  > |__|    \\______  /\\___  >___|  /__|    \\___  >____  >'
    puts '        \\/       \\/                 \\/     \\/     \\/            \\/     \\/ '
  end
end
