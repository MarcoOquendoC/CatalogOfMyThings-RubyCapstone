module ListBooks
  def list_books
    puts 'List of all books'
    puts ''

    @books_list.each do |book|
      puts "Publisher: #{book.publisher}, Cover State: #{book.cover_state}, Publish Date: #{book.publish_date}"
    end

    puts ''
    puts 'Press Enter to return to main menu'
    gets.chomp
    run
  end
end
