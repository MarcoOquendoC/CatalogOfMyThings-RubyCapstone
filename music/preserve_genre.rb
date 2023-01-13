module PreserveGenre
  def preserve
    obj = {
      id: self.id,
      name: self.name,
      items: self.items.map do |item| 
        item_obj = {
          id: item.id,
          name: item.name,
          on_spotify: item.on_spotify,
          publish_date: item.publish_date,
          archived: item.archived
        }
        item_obj
      end
    }

    # open, load, append, erase, write, close
    file = File.open('./data/genres.json', "r+")
    data = JSON.load(file) || []
    data.push(obj)
    file.pos = 0
    file.truncate(file.size)
    file.write(JSON.pretty_generate(data))
    file.close
  end
end
