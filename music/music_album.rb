require_relative '../src/item'

class MusicAlbum < Item
  attr_accessor :on_spotify, :name

  def initialize(publish_date, archived, name, on_spotify: false)
    super(publish_date, archived: archived)
    @on_spotify = on_spotify
    @name = name
  end

  def can_be_archived?
    super && @on_spotify
  end
end
