require_relative '../../game/preserve_data'
require_relative '../../book/persist_books'
require_relative '../../music/preserve'

module AddBook
  def add_book
    puts 'Enter author first name'
    author_first_name = gets.chomp
    puts 'Enter author last name'
    author_last_name = gets.chomp
    puts 'Enter book publisher'
    publisher = gets.chomp
    puts 'Enter book genre'
    genre_name = gets.chomp
    puts 'Enter book cover state bad or good'
    cover_state = gets.chomp
    puts 'Enter book publish date [yyyy-mm-dd]:'
    publish_date = gets.chomp
    puts 'Enter label title for the book'
    label_title = gets.chomp
    puts 'Enter label color'
    label_color = gets.chomp

    new_book = Book.new(publisher, cover_state, publish_date)

    new_label = Label.new(label_title, label_color)
    new_label.add_item(new_book)

    new_author = Author.new(author_first_name, author_last_name)
    new_author.add_item(new_book)

    new_genre = Genre.new(genre_name)
    new_genre.add_item(new_book)

    @books << new_book unless @books.include?(new_book)
    @labels << new_label unless @labels.include?(new_label)
    @authors << new_author unless @authors.include?(new_author)
    PersistBooks.persist_book(new_book)
    PersistBooks.persist_label(new_label)
    PreserveGame.persist_author(new_author)
    Preserve.genres(new_genre)

    system('clear')
    puts 'Book added succesfully!'
    puts 'Press Enter to return to main menu'
    gets.chomp
    run
  end
end
