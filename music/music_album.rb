require_relative '../src/item'
require_relative 'preserve_album'

class MusicAlbum < Item
  include PreserveAlbum

  attr_accessor :on_spotify, :name

  def initialize(publish_date, name, on_spotify: false)
    super(publish_date, archived: false)
    @on_spotify = on_spotify
    @name = name
  end

  def can_be_archived?
    super && @on_spotify
  end

  def self.load_albums
    file = File.open('./data/albums.json', "r")
    data = JSON.load(file) || []
    file.close
    data
  end
end
