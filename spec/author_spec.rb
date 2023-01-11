require_relative 'spec_helper'

describe 'Author' do
  before(:each) do
    @author = Author.new('John', 'Doe')
  end

  describe '#new' do
    it 'takes two parameters and returns an Author object' do
      expect(@author).to be_an_instance_of Author
    end
  end

  describe '#first_name' do
    it 'returns the correct first name' do
      expect(@author.first_name).to eql 'John'
    end
  end

  describe '#last_name' do
    it 'returns the correct last name' do
      expect(@author.last_name).to eql 'Doe'
    end
  end

  describe '#add_item' do
    it 'should return an array of game objects' do
      game = Game.new('2020-10-10', true, true, '2020-10-10')
      @author.add_item(game)
      expect(@author.items).to include(game)
    end
  end
end
