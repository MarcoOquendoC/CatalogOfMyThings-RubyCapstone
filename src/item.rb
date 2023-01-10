require 'date'
require 'securerandom'

class Item
  attr_accessor :id, :genre, :author, :source, :label, :archived
  attr_reader :publish_date

  def initialize(id = SecureRandom.uuid, date = Date.today)
    @id = id
    @publish_date = date
    @genre = 'N/A'
    @author = 'N/A'
    @source = 'N/A'
    @label = 'N/A'
    @archived = false
  end

  def can_be_archived?
    Time.now.year - @publish_date.year > 10
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end
