require 'game'

describe Game do

  describe 'placing your ship on a board' do
    it 'allows user to place its ship on a board' do
      game = Game.new
      game.put_your_ship(2,4)
      expect(game.grid.new_grid[2][4]).to eq("ship")
    end
  end




end
