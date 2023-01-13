module AddMusicAlbum
  def add_music_album
    greet_add_album

    print 'Enter the music album\'s genre: '
    genre_name = gets.chomp

    print 'Enter the music album\'s label: '
    label = gets.chomp

    print 'Enter the music album\'s author\'s first name: '
    first_name = gets.chomp

    print 'Enter the music album\'s author\'s last name: '
    last_name = gets.chomp

    print "\nWhat's the publish date? [year]: "
    album_date = gets.chomp.to_i

    print 'Is this Music Album on Spotify? [y/n]: '
    spotify = gets.chomp
    is_on_spotify = case spotify.downcase
                    when 'y'
                      true
                    else
                      false
                    end

    music_album = MusicAlbum.new(album_date, on_spotify: is_on_spotify)

    label = Label.new(label, 'unknown')
    label.add_item(music_album)

    author = Author.new(first_name, last_name)
    author.add_item(music_album)

    new_genre = Genre.new(genre_name)
    new_genre.add_item(music_album)

    @labels_list << label
    @authors << author
    @genres << new_genre
    @music_albums << music_album

    puts 'Album added successfully!'
    puts 'Press enter to continue'
    gets
    system('clear')
    system('cls')
    run
  end

  def greet_add_album
    # Generated from https://edukits.co/text-art/ (duplicate \ to print them)
    puts '               _____  .__ ___.                  '
    puts '    .__       /  _  \\ |  |\\_ |__  __ __  _____  '
    puts '  __|  |___  /  /_\\  \\|  | | __ \\|  |  \\/     \\ '
    puts ' /__    __/ /    |    \\  |_| \\_\\ \\  |  /  Y Y  \\'
    puts '    |__|    \\____|__  /____/___  /____/|__|_|  /'
    puts '                    \\/         \\/            \\/ '
  end
end
