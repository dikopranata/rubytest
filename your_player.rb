require './base_player.rb'

class YourPlayer < BasePlayer
  def next_point(time:)
    
    if (x == grid.size) && (y != grid.size)
      {
        x = grid.size
        if ( y == grid.size ) 
          {
            y = grid.size
          }
        else 
          {
            y += 1 
          }
      } 
    elsif (x == grid.size) && (y == grid.size)
      {
        x -= 1
        y = y
      }
    elsif (x != grid.size) && (y == grid.size) 
      {
        if (x == 0) && (y == grid.size ) {
          x = 0
          y = grid.size
        } else {
          x -= 1
          y = grid.size
        }
        
      }
    elsif (x == 0) && (y == grid.size) {
      x = 0
      y -= 1 
    }
    else
      {
        x += 1
        y = 0
      }
    

    move = {
      row: x,
      col: y
    }
    
  end

  def grid
    game.grid
  end
end
