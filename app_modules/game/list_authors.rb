module ListAuthors
  def lis_all_authors
    greet_authors

    puts '============================================================'
    if @authors.empty?
      puts "\n No authors found"
      puts '============================================================'
    else
      puts "\n List of Authors \n"
      @authors.each_with_index do |author, index|
        puts "(#{index + 1}) ID: (#{author.id}) Author: #{author.first_name} #{author.last_name}"
      end
    end
    puts '============================================================'
    puts 'Press any key to go back to the main menu'
    gets.chomp
    run
  end

  def greet_authors
    # Generated from https://edukits.co/text-art/ (duplicate \ to print them)
    puts '               __  .__                         '
    puts '_____   __ ___/  |_|  |__   ___________  ______'
    puts '__  \\ |  |  \\   __\\  |  \\ /  _ _  __ /  ___/'
    puts ' / __ \\|  |  /|  | |   Y  (  <_> )  | \\/\\___ \\ '
    puts '(____  /____/ |__| |___|  /\\____/|__|  /____  >'
    puts '     \\/                 \\/                  \\/ '
  end
end
