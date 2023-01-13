require_relative '../spec_helper'

describe 'Music Album class unit tests.' do
  context 'New Music Album takes three parameters.' do
    it 'Returns a MusicAlbum object' do
      album = MusicAlbum.new('2020-10-10', 'Garage', on_spotify: true)
      expect(album).to be_an_instance_of MusicAlbum
    end

    it 'Should be kind of Item object' do
      album = MusicAlbum.new('2020-10-10', 'Garage', on_spotify: true)
      expect(album).to be_kind_of Item
    end
  end

  context 'The method can be archived? when on_spotify == true.' do
    it 'Should return false to recent albums' do
      album = MusicAlbum.new('2023-01-01', 'Garage', on_spotify: true)
      expect(album.send(:can_be_archived?)).to eql(false)
    end

    it 'Should return true to old albums' do
      album = MusicAlbum.new('2012-01-01', 'Garage', on_spotify: true)
      expect(album.send(:can_be_archived?)).to eql(true)
    end
  end

  context 'The Method can be archived? when on_spotify == false.' do
    it 'Should return false to recent albums' do
      album = MusicAlbum.new('2023-01-01', 'Garage', on_spotify: true)
      expect(album.send(:can_be_archived?)).to eql(false)
    end

    it 'Should return false to old albums' do
      album = MusicAlbum.new('2013-01-01', 'Garage', on_spotify: true)
      expect(album.send(:can_be_archived?)).to eql(false)
    end
  end
end
