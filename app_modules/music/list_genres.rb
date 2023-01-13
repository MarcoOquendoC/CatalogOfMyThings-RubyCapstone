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
    puts '   ____   ____   ___________   ____   ______'
    puts '  / ___\\_/ __ \\ /    \\_  __ \\_/ __ \\ /  ___/'
    puts ' / /_/  >  ___/|   |  \\  | \\/\\  ___/ \\___ \\ '
    puts ' \\___  / \\___  >___|  /__|    \\___  >____  >'
    puts '/_____/      \\/     \\/            \\/     \\/ '
  end
end
