module PreserveAlbum
  def preserve
    genre = {
      id: self.genre.id,
      name: self.genre.name,
      items: self.genre.items.map(&:name)
    }

    obj = {
      id: id,
      name: name,
      on_spotify: on_spotify,
      genre: genre,
      publish_date: publish_date,
      archived: archived
    }

    # open, load, append, erase, write, close
    file = File.open('./data/albums.json', 'r+')
    data = JSON.parse(file) || []
    data.push(obj)
    file.pos = 0
    file.truncate(file.size)
    file.write(JSON.pretty_generate(data))
    file.close
  end
end
