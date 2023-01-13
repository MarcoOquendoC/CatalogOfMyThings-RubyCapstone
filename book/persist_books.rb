require 'json'

class PersistBooks
  def self.persist_book(book, label, author, genre)
    file = './data/books.json'
    new_book = {
      id: book.id,
      publisher: book.publisher,
      cover_state: book.cover_state,
      publish_date: book.publish_date,
      author: {
        first_name: author.first_name,
        last_name: author.last_name,
        id: author.id
      },
      label: {
        id: label.id,
        title: label.title,
        color: label.color
      },
      genre: {
        id: genre.id,
        name: genre.name
      }
    }
    File.write(file, '[]') unless File.exist?(file)
    books_data = File.read(file)
    @books = JSON.parse(books_data)
    @books << new_book
    File.write(file, JSON.pretty_generate(@books))
  end

  def self.load_books
    file = './data/books.json'
    data = []
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |book|
        preserved_books = Book.new(
          book['publisher'],
          book['cover_state'],
          book['publish_date']
        )
        data << preserved_books
      end
    end
    data
  end

  def self.load_labels
    file = './data/books.json'
    data = []
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |label|
        preserved_label = Label.new(
          label['label']['title'],
          label['label']['color'],
          label['label']['id']
        )
        data << preserved_label
      end
    end
    data
  end
end
