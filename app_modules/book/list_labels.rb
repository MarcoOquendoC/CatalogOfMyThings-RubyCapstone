module ListLabels
  def list_labels
    greet_labels

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

  def greet_labels
    # Generated from https://edukits.co/text-art/ (duplicate \ to print them)
    puts '.__        ___.          .__          '
    puts '|  | _____ \\_ |__   ____ |  |   ______'
    puts '|  | \\__  \\ | __ \\_/ __ \\|  |  /  ___/'
    puts '|  |__/ __ \\| \\_\\ \\  ___/|  |__\\___ \\ '
    puts '|____(____  /___  /\\___  >____/____  >'
    puts '          \\/    \\/     \\/          \\/ '
  end
end
