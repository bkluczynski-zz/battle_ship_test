class Grid

attr_reader :new_grid

def initialize(grido = Array.new(10).map!{ Array.new(10) } )
  @new_grid = grido
end


end
