require 'json'

class PersistBooks
  def self.persist_book(book)
    file = './data/books.json'
    new_book = {
      id: book.id,
      publisher: book.publisher,
      cover_state: book.cover_state,
      publish_date: book.publish_date,
      author: {
        first_name: book.author.first_name,
        last_name: book.author.last_name,
        id: book.author.id
      },
      label: {
        id: book.label.id,
        title: book.label.title,
        color: book.label.color
      },
      genre: {
        id: book.genre.id,
        name: book.genre.name
      }
    }
    File.write(file, '[]') unless File.exist?(file)
    books_data = File.read(file)
    @books = JSON.parse(books_data)
    @books << new_book
    File.write(file, JSON.pretty_generate(@books))
  end

  def self.persist_label(label)
    file = './data/labels.json'
    label = {
      title: label.title,
      color: label.color,
      id: label.id
    }

    File.write(file, '[]') unless File.exist?(file)
    labels_data = File.read(file)
    @labels = JSON.parse(labels_data)
    @labels << label
    File.write(file, JSON.pretty_generate(@labels))
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
    file = './data/labels.json'
    data = []
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |labels|
        label = Label.new(labels['title'], labels['color'], id: labels['id'])
        data << label
      end
    end
    data
  end
end
