module PreserveAlbum
  def preserve
    genre = {
      id: self.genre.id,
      name: self.genre.name,
      items: self.genre.items.map { |item| { id: item.id, title: item.label.title } }
    }

    label = {
      id: self.label.id,
      title: self.label.title,
      items: self.label.items.map { |item| { id: item.id, name: item.label.title } }
    }

    obj = {
      id: id,
      label: label,
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
