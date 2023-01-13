module ListMusicAlbums
  def list_music_albums
    greet_albums

    @music_albums.each_with_index do |album, index|
      puts '{'
      puts "  Index: #{index + 1}"
      puts "  ID: #{album.id}"
      puts "  Title: #{album.label.title}"
      puts "  Genre: #{album.genre.name}"
      puts "  Author: #{album.author.first_name} #{album.author.last_name}"
      puts "  On Spotify?: #{album.on_spotify}"
      puts "  Publish Date: #{album.publish_date}"
      puts "  Archived: #{album.archived}"
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
    puts '       .__ ___.                         '
    puts '_____  |  |\\_ |__  __ __  _____   ______'
    puts '\\__  \\ |  | | __ \\|  |  \\/     \\ /  ___/'
    puts ' / __ \\|  |_| \\_\\ \\  |  /  Y Y  \\___ \\ '
    puts '(____  /____/___  /____/|__|_|  /____  >'
    puts '     \\/         \\/            \\/     \\/ '
  end
end
