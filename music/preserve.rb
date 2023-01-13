class Preserve
  def self.albums(album)
    genre = {
      id: album.genre.id,
      name: album.genre.name
    }

    label = {
      id: album.label.id,
      title: album.label.title
    }

    author = {
      id: album.author.id,
      first_name: album.author.first_name,
      last_name: album.author.last_name
    }

    new_album = {
      id: album.id,
      on_spotify: album.on_spotify,
      publish_date: album.publish_date,
      archived: album.archived,
      label: label,
      genre: genre,
      author: author
    }

    file = './data/albums.json'
    File.write(file, '[]') unless File.exist?(file)
    albums_data = File.read(file)
    @music_albums = JSON.parse(albums_data)
    @music_albums << new_album
    File.write(file, JSON.pretty_generate(@music_albums))
  end

  def self.genres(genre)
    puts 'preserve genres no code yet'
    new_genre = {
      id: genre.id,
      name: genre.name,
      items: genre.items.map do |item|
        item_obj = {
          id: item.id,
          title: item.label.title,
        }
        item_obj
      end
    }

    file = './data/genres.json'
    File.write(file, '[]') unless File.exist?(file)
    genres_data = File.read(file)
    @genres = JSON.parse(genres_data)
    @genres << new_genre
    File.write(file, JSON.pretty_generate(@genres))
  end
end
