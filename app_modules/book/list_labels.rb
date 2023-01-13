module ListLabels
  def list_labels
    puts 'List of all labels'
    puts ''

    @labels.each do |label|
      puts "Title: #{label.title}, Color: #{label.color}"
    end

    puts ''
    puts 'Press Enter to return to main menu'
    gets.chomp
    run
  end
end
