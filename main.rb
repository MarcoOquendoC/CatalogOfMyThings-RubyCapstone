require_relative 'app'

def main
  system('cls')
  system('clear')
  puts "________Welcome to Catalog Of My Things App!________\n "
  app = App.new
  app.run
end

main
