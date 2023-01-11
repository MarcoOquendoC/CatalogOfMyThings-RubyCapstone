require_relative '../spec_helper'

describe 'Game' do
  describe 'can be archived?' do
    it 'should return true' do
      game = Game.new('2010-10-10', true, false, '2010-10-10')
      expect(game.send(:can_be_archived?)).to eql(true)
    end
  end

  describe 'can be archived?' do
    it 'should return false' do
      game = Game.new('2020-10-10', true, false, '2020-10-10')
      expect(game.send(:can_be_archived?)).to eql(false)
    end
  end
end
