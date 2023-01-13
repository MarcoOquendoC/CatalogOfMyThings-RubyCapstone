module ListMusicAlbums
  def list_music_albums
    greet_albums

    @music_albums.map do |album|
      genre = [
        "ID: #{album.genre.id}",
        "Name: #{album.genre.name}",
        "Item(s): #{album.genre.items.count}"
      ]
      puts '{'
      puts "  Name: #{album.label.title}"
      puts "  On Spotify?: #{album.on_spotify}"
      puts "  Archived: #{album.archived}"
      puts "  Publish Date: #{album.publish_date}"
      puts "  Genre: #{genre}"
      puts '}'
    end

    puts 'press enter to continue'
    gets
    system('clear')
    system('cls')
    run
  end

  def greet_albums
    # Generated from https://edukits.co/text-art/ (duplicate \ to print them)
    puts '.____    .__          __       _____  .__ ___.                         '
    puts '|    |   |__| _______/  |_    /  _  \\ |  |\\_ |__  __ __  _____   ______'
    puts '|    |   |  |/  ___/\\   __\\  /  /_\\  \\|  | | __ \\|  |  \\/     \\ /  ___/'
    puts '|    |___|  |\\___ \\  |  |   /    |    \\  |_| \\_\\ \\  |  /  Y Y  \\___ \\ '
    puts '|_______ \\__/____  > |__|   \\____|__  /____/___  /____/|__|_|  /____  >'
    puts '        \\/       \\/                 \\/         \\/            \\/     \\/ '
  end
end
