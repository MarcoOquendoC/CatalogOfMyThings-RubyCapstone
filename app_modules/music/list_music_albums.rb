module ListMusicAlbums
  def list_music_albums
    greet_albums

    @music_albums.map do |album|
      puts '{'
      puts "  Name: #{album[:name]}"
      puts "  Artist: #{album[:artist]}"
      puts "  Genre: #{album[:genre][:name]}"
      puts "  On Spotify?: #{album[:on_spotify]}"
      puts "  Archived: #{album[:archived]}"
      puts "  Publish Date: #{album[:publish_date]}"
      puts '}'
    end

    puts 'press enter to continue'
    gets
    system('clear')
    system('cls')
    run
  end

  def greet_albums
    # I duplicated backslashes \ to print them
    puts ".____    .__          __       _____  .__ ___.                         "
    puts "|    |   |__| _______/  |_    /  _  \\ |  |\\_ |__  __ __  _____   ______"
    puts "|    |   |  |/  ___/\\   __\\  /  /_\\  \\|  | | __ \\|  |  \\/     \\ /  ___/"
    puts "|    |___|  |\\___ \\  |  |   /    |    \\  |_| \\_\\ \\  |  /  Y Y  \\___ \\ "
    puts "|_______ \\__/____  > |__|   \\____|__  /____/___  /____/|__|_|  /____  >"
    puts "        \\/       \\/                 \\/         \\/            \\/     \\/ "
  end
end
