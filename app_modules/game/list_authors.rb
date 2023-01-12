module ListAuthors
  def lis_all_authors
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
end
