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
    puts '   ____   ____   ___________   ____   ______'
    puts '  / ___\\_/ __ \\ /    \\_  __ \\_/ __ \\ /  ___/'
    puts ' / /_/  >  ___/|   |  \\  | \\/\\  ___/ \\___ \\ '
    puts ' \\___  / \\___  >___|  /__|    \\___  >____  >'
    puts '/_____/      \\/     \\/            \\/     \\/ '
  end
end
