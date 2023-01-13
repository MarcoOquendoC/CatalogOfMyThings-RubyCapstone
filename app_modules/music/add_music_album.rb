require_relative '../../music/preserve'
require_relative '../../game/preserve_data'

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

    print 'Is this Music Album on Spotify? [y: true / anykey: false]: '
    spotify = gets.chomp
    is_on_spotify = case spotify.downcase
                    when 'y'
                      true
                    else
                      puts 'on_spotify set to false'
                      false
                    end

    music_album = MusicAlbum.new(album_date, on_spotify: is_on_spotify)

    label = Label.new(label, 'Green')
    label.add_item(music_album)

    author = Author.new(first_name, last_name)
    author.add_item(music_album)

    genre = Genre.new(genre_name)
    genre.add_item(music_album)

    @labels << label
    @authors << author
    @genres << genre
    @music_albums << music_album

    Preserve.albums(music_album)
    Preserve.genres(genre)
    PreserveGame.persist_author(author)

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
