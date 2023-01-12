require_relative '../spec_helper'

describe "Genre class unit tests.\n" do
  before(:each) do
    @genre = Genre.new('Rock')
  end

  context 'New Genre object' do
    it 'Takes one parameter and returns a Genre object' do
      @genre = Genre.new('Rock')
      expect(@genre).to be_instance_of(Genre)
    end
  end

  context 'Calling genre_object.name' do
    it 'returns string' do
      @genre = Genre.new('Rock')
      expect(@genre.name).to be_kind_of(String)
    end

    it 'returns the correct name' do
      @genre = Genre.new('Rock')
      expect(@genre.name).to eql 'Rock'
    end
  end

  context "Calling genre_object.add_item(album_item) method\n" do
    it 'should push album_item into genre_object.items array' do
      album_item = MusicAlbum.new('2020-10-10', false, 'Garage', on_spotify: true)
      @genre = Genre.new('Rock')
      @genre.add_item(album_item)
      expect(@genre.items).to include(album_item)
    end
  end
end
