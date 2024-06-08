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
