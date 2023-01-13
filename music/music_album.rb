require_relative '../src/item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(publish_date, on_spotify: false)
    super(publish_date, archived: false)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify
  end

  def self.load_albums
    file = File.open('./data/albums.json', 'r')
    data = JSON.parse(file) || []
    file.close
    data
  end
end
