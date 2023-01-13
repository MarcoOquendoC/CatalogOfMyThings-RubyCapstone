module PreserveAlbum
  def preserve
    genre = {
      id: self.genre.id,
      name: self.genre.name,
      items: self.genre.items.map { |item| item.name }
    }

    obj = {
      id: self.id,
      name: self.name,
      on_spotify: self.on_spotify,
      genre: genre,
      publish_date: self.publish_date,
      archived: self.archived
    }

    # open, load, append, erase, write, close
    file = File.open('./data/albums.json', "r+")
    data = JSON.load(file) || []
    data.push(obj)
    file.pos = 0
    file.truncate(file.size)
    file.write(JSON.pretty_generate(data))
    file.close
  end
end
