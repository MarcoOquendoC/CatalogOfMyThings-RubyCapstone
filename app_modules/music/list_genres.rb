module ListGenres
  def list_genres
    greet_genres

    @genres.each_with_index do |genre, index|
      puts '{'
      puts "  [Index]: #{index + 1}"
      puts "  ID: #{genre.id}"
      puts "  Name: #{genre.name}"
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
