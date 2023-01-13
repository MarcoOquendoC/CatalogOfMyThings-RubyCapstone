module ListBooks
  def list_books
    greet_books

    puts 'List of all books'
    puts ''

    @books.each do |book|
      puts "Publisher: #{book.publisher}, Cover State: #{book.cover_state}, Publish Date: #{book.publish_date}"
    end

    puts ''
    puts 'Press Enter to return to main menu'
    gets.chomp
    run
  end

  def greet_books
    # Generated from https://edukits.co/text-art/ (duplicate \ to print them)
    puts '___.                  __            '
    puts '\\_ |__   ____   ____ |  | __  ______'
    puts ' | __ \\ /  _ \\ /  _ \\|  |/ / /  ___/'
    puts ' | \\_\\ (  <_> |  <_> )    <  \\___ \\ '
    puts ' |___  /\\____/ \\____/|__|_ \\/____  >'
    puts '     \\/                   \\/     \\/ '
  end
end
