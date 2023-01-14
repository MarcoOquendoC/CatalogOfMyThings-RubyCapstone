require_relative 'spec_helper'

describe Book do
  before(:each) do
    @book = Book.new('Stephen King', 'good', '2020-01-01')
  end

  context '#new' do
    it 'takes two parameters and returns a Book object' do
      expect(@book).to be_an_instance_of Book
    end
  end

  context '#publisher' do
    it 'returns the correct publisher' do
      expect(@book.publisher).to eql 'Stephen King'
    end
  end

  context '#cover_state' do
    it 'returns the correct cover state' do
      expect(@book.cover_state).to eql 'good'
    end
  end

  context '#can_be_archived?' do
    it 'should return false' do
      expect(@book.can_be_archived?).to eql false
    end

    it 'should return true when cover_state is bad' do
      @bad_cover_book = Book.new('Stephen King', 'bad', '2020-01-01')
      expect(@bad_cover_book.can_be_archived?).to eql true
    end
  end
end
