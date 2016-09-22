class Game

  attr_reader :grid

  def initialize(grid = Grid.new)
    @grid = grid
  end

  def put_your_ship(a,b)
    @grid.new_grid[a][b] = "ship"
  end


end
