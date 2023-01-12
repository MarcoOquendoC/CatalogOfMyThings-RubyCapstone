require 'json'

class PreserveGame
  def self.persist_game(game, author, label, genre)
    file = './data/games.json'
    new_game = {
      id: game.id, name: game.name, multiplayer: game.multiplayer,
      last_played_at: game.last_played_at, publish_date: game.publish_date,
      author: {
        first_name: author.first_name,
        last_name: author.last_name,
        id: author.id
      },
      label: {
        id: label.id,
        title: label.title,
        color: label.color
      },
      genre: {
        id: genre.id,
        name: genre.name
      }
    }
    games_data = File.exist?(file) ? File.read(file) : File.write(file, '[]')
    @games = JSON.parse(games_data)
    @games << new_game
    File.write('./data/games.json', JSON.pretty_generate(@games))
  end

  def self.load_games
    file = './data/games.json'
    data = []
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |game|
        data.push(game)
      end
    end
    data
  end

  def self.load_authors
    file = './data/games.json'
    data = []
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |author|
        preserved_author = Author.new(author['author']['first_name'], author['author']['last_name'],
                                      author['author']['id'])
        data << preserved_author
      end
    end
    data
  end

  #
  #   def self.load_games
  #     file = './data/games.json'
  #     data = []
  #     if File.exist?(file)
  #       JSON.parse(File.read(file)).each do |game|
  #         preserved_games = Game.new(game['name'], game['multiplayer'], game['last_played_at'], game['publish_date'])
  #         data << preserved_games
  #       end
  #     end
  #     data
  #   end
  #
  #   def self.load_authors
  #     file = './data/authors.json'
  #     data = []
  #     if File.exist?(file)
  #       JSON.parse(File.read(file)).each do |author|
  #         preserved_author = Author.new(author['first_name'], author['last_name'])
  #         data << preserved_author
  #       end
  #     end
  #     data
  #   end
end
