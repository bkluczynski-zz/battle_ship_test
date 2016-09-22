require 'game'

describe Game do

    describe 'placing your ship on a board' do
      it 'allows user to place its ship on a board' do
        game = Game.new
        game.put_your_ship(2,5)
        expect(game.grid.new_grid[2][5]).to eq("ship")
      end
    end

    it 'forbids from placing a ship in a cell where it has been already stored' do
      game = Game.new
      game.put_your_ship(2,4)
      expect{game.put_your_ship(2,4)}.to raise_error('You cannot place your ship here, go find a different spot')
    end




end
