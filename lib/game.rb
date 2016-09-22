class Game
    attr_reader :my_grid, :enemy_grid

    def initialize(grid = Grid.new, grid2 = Grid.new)
        @enemy_grid = grid
        @my_grid = grid2
    end

    def put_your_ship(row, column)
        outside_grid_error if not_correct_position?(row, column)
        same_spot_error if @my_grid.new_grid[row][column] == 'ship'
        @my_grid.new_grid[row][column] = 'ship'
    end

    def randomly_put_ships(player_or_machine)
        if player_or_machine == 'player'
            10.times do
                @my_grid.new_grid[rand(1..10)][rand(1..10)] = 'ship'
            end

        elsif player_or_machine == 'machine'
            10.times do
                @enemy_grid.new_grid[rand(1..10)][rand(1..10)] = 'ship'
            end

        else
            'Wrong selection!'
        end
    end

    def fire(row, column)
        if @enemy_grid.new_grid[row][column] == 'ship'
            @enemy_grid.new_grid[row][column] = 'sank ship'
            'You nailed it!'
        elsif @enemy_grid.new_grid[row][column].nil? || @enemy_grid.new_grid[row][column] == 'sank ship'
            'Missed it! Try a different location!'
       end
    end

    private

    def not_correct_position?(row, column)
        (row <= 0 || row > 10) || (column <= 0 || column > 10)
    end

    def outside_grid_error
        fail 'You cannot place your ship outside the grid, find a better place'
    end

    def same_spot_error
        fail 'You cannot place your ship here, go find a different spot'
    end
end
