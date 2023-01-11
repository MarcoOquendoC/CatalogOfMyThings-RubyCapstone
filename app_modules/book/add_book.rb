module AddBook
  def add_book
    puts 'Enter book publisher'
    publisher = gets.chomp
    puts 'Enter book cover state'
    cover_state = gets.chomp
    puts 'Enter book publish date'
    publish_date = gets.chomp

    @books_list << Book.new(publisher, cover_state, publish_date)
    system('clear')
    puts 'Book added succesfully!'
    puts 'Press Enter to return to main menu'
    gets.chomp
    run
  end
end
