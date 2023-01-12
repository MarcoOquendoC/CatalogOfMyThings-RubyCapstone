module AddBook
  def add_book
    puts 'Enter book publisher'
    publisher = gets.chomp
    puts 'Enter book cover state'
    cover_state = gets.chomp
    puts 'Enter book publish date'
    publish_date = gets.chomp
    puts 'Enter label title for the book'
    label_title = gets.chomp
    puts 'Enter label color'
    label_color = gets.chomp

    new_book = Book.new(publisher, cover_state, publish_date)
    new_label = Label.new(label_title, label_color)
    new_label.add_item(new_book)
    @labels_list << new_label
    @books_list << new_book

    system('clear')
    puts 'Book added succesfully!'
    puts 'Press Enter to return to main menu'
    gets.chomp
    run
  end
end
