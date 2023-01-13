class Preserve
  def self.albums(album)
    puts 'Preserving album...'
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
      name: "#{album.author.first_name} #{album.author.last_name}"
    }

    obj = {
      id: album.id,
      on_spotify: album.on_spotify,
      publish_date: album.publish_date,
      archived: album.archived,
      label: label,
      genre: genre,
      author: author
    }

    # open, load, append, erase, write, close
    # file = File.open('./data/albums.json', 'r+')
    # data = JSON.parse(file) || []
    # data.push(obj)
    # file.pos = 0
    # file.truncate(file.size)
    # file.write(JSON.pretty_generate(data))
    # file.close
  end

  def self.genres(_genre)
    puts 'preserve genres no code yet'
    # obj = {
    #   id: id,
    #   name: name,
    #   items: items.map do |item|
    #     item_obj = {
    #       id: item.id,
    #       title: item.label.title,
    #       on_spotify: item.on_spotify,
    #       publish_date: item.publish_date,
    #       archived: item.archived
    #     }
    #     item_obj
    #   end
    # }

    # open, load, append, erase, write, close
    # file = File.open('./data/genres.json', 'r+')
    # data = JSON.parse(file) || []
    # data.push(obj)
    # file.pos = 0
    # file.truncate(file.size)
    # file.write(JSON.pretty_generate(data))
    # file.close
  end
end
