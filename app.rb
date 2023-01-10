require_relative 'src/item'
require_relative 'app_modules/first_menu'

class App
  include FirstMenu

  def run
    first_menu
    handle_option
    exit
  end
end
