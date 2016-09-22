class Game

  attr_reader :grid

  def initialize(grid = Grid.new)
    @grid = grid
  end

  def put_your_ship(a,b)
    fail 'You cannot place your ship outisde the grid, find a better place' if (a <= 0 || a > 10) || (b <= 0 || b > 10)
    fail 'You cannot place your ship here, go find a different spot' if @grid.new_grid[a][b] == "ship"
    @grid.new_grid[a][b] = "ship"
  end


private





end
