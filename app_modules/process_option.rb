module ProcessOption
  def process_option(selected_option)
    case selected_option
    when 1
      list_books
    when 2
      list_music_albums
    when 3
      list_games
    when 4
      list_genres
    when 5
      list_labels
    when 6
      lis_all_authors
    when 7
      add_book
    when 8
      add_music_album
    when 9
      add_game
    else
      puts 'Select a valid option'
      run
    end
  end
end
