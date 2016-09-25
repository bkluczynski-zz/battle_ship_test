require 'game'

describe Game do
    describe 'placing your ship on a board' do
        it 'allows user to place its ship on a board' do
            game = Game.new
            game.put_your_ship(2, 5)
            expect(game.my_grid.new_grid[2][5]).to eq('ship')
        end
    end

    it 'forbids from placing a ship in a cell where it has been already stored' do
        game = Game.new
        game.put_your_ship(2, 4)
        expect { game.put_your_ship(2, 4) }.to raise_error('You cannot place your ship here, go find a different spot')
    end

    it 'forbids from placing a ship outside the grid' do
        game = Game.new
        expect { game.put_your_ship(11, 4) }.to raise_error('You cannot place your ship outside the grid, find a better place')
    end
    describe 'two players = two boards' do
        it 'allows to keep two boards' do
            game = Game.new
            expect(game.put_your_ship(2, 5)).to eq('ship')
            expect(game.enemy_grid.new_grid[2][5]).to be nil
        end

        it 'allows a computer to randomly select 10 ships around the board ' do
            arr = []
            game = Game.new
            game.randomly_put_ships('machine')
            game.enemy_grid.new_grid.each do |placement|
                placement == 'ship'
                arr << placement
            end
            expect(arr.length).to eq 10
        end
    end
end
