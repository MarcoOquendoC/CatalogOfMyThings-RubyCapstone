require_relative 'spec_helper'

describe Label do
  before(:each) do
    @label = Label.new('Fiction', 'Red')
  end

  context '#new' do
    it 'takes two parameters and returns a Label object' do
      expect(@label).to be_an_instance_of Label
    end
  end

  context '#title' do
    it 'returns the correct title' do
      expect(@label.title).to eql 'Fiction'
    end
  end

  context '#color' do
    it 'returns the correct color' do
      expect(@label.color).to eql 'Red'
    end
  end

  context '#add_item' do
    it 'should add item correctly' do
      @book = Book.new('Stephen King', 'good', '2020-01-01')
      @label.add_item(@book)
      expect(@label.items[0]).to be_an_instance_of Book
    end
  end
end
