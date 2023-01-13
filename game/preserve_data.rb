require 'json'

class PreserveGame
  def self.persist_game(game)
    file = './data/games.json'
    new_game = {
      id: game.id, multiplayer: game.multiplayer,
      last_played_at: game.last_played_at, publish_date: game.publish_date,
      author: {
        first_name: game.author.first_name,
        last_name: game.author.last_name,
        id: game.author.id
      },
      label: {
        id: game.label.id,
        title: game.label.title,
        color: game.label.color
      },
      genre: {
        id: game.genre.id,
        name: game.genre.name
      }
    }
    games_data = File.exist?(file) ? File.read(file) : File.write(file, '[]')
    @games = JSON.parse(games_data)
    @games << new_game
    File.write('./data/games.json', JSON.pretty_generate(@games))
  end

  def self.persist_author(authors)
    file = './data/authors.json'
    author = {
      first_name: authors.first_name,
      last_name: authors.last_name,
      id: authors.id
    }
    authors_data = File.exist?(file) ? File.read(file) : File.write(file, '[]')
    @authors = JSON.parse(authors_data)
    @authors << author
    File.write(file, JSON.pretty_generate(@authors))
  end

  def self.load_games
    file = './data/games.json'
    data = []
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |games|
        game = Game.new(games['multiplayer'], games['last_played_at'], games['publish_date'])
        label = Label.new(games['label']['title'], games['label']['color'], id: games['label']['id'])
        author = Author.new(games['author']['first_name'], games['author']['last_name'], id: games['author']['id'])
        genre = Genre.new(games['genre']['name'], id: games['genre']['id'])

        game.author = author
        game.label = label
        game.genre = genre
        data << game
      end
    end
    data
  end

  def self.load_authors
    file = './data/authors.json'
    data = []
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |author|
        preserved_author = Author.new(author['first_name'], author['last_name'],
                                      author['id'])
        data << preserved_author
      end
    end
    data
  end
end
