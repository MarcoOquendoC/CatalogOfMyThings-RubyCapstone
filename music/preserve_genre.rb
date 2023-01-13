module PreserveGenre
  def preserve
    obj = {
      id: id,
      name: name,
      items: items.map do |item|
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
    file = File.open('./data/genres.json', 'r+')
    data = JSON.parse(file) || []
    data.push(obj)
    file.pos = 0
    file.truncate(file.size)
    file.write(JSON.pretty_generate(data))
    file.close
  end
end
