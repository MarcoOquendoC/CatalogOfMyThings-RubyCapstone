require 'date'
require 'securerandom'
require_relative '../src/item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state)
    super(publish_date, id)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    @cover_state == 'bad' or super
  end
end
