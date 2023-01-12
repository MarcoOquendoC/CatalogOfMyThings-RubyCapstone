require_relative '../src/item'
require 'date'

class Game < Item
  attr_accessor :name, :multiplayer, :last_played_at, :id

  def initialize(name, multiplayer, last_played_at, publish_date = Date.today)
    super(publish_date)
    @name = name
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  private

  def can_be_archived?
    super && (Date.today - Date.parse(@last_played_at)).to_i > 2
  end
end
