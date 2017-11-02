require_relative 'board'

class Game

  attr_accessor :board

  WIN_CASES = [[0,1,2],[3,4,5],[6,7,8],[0,4,8],
               [2,4,6],[0,3,6],[1,4,7],[2,5,8]]

  def initialize(board = Board.new)
    @board = board
    @state = true
  end

  def player_make_move(row, col , player)
    @board.grid[row][col] = player
  end

  def horizontal_winner
    if @board.grid.include?(nil)
      return "Error"
    elsif
      (@board.grid[0][0] == @board.grid[0][2]) && (@board.grid[0][0] == @board.grid[0][1]) ||
      (@board.grid[1][0] == @board.grid[1][2]) && (@board.grid[1][0] == @board.grid[1][1]) ||
      (@board.grid[2][0] == @board.grid[2][2]) && (@board.grid[2][0] == @board.grid[2][1])
      return "Winner"
    else
       return nil
    end
  end

  def vertical_winner
    if
      (@board.grid[0][0] == @board.grid[0][3]) && (@board.grid[0][0] == @board.grid[0][6]) ||
      (@board.grid[1][0] == @board.grid[1][4]) && (@board.grid[1][0] == @board.grid[1][7]) ||
      (@board.grid[2][0] == @board.grid[2][5]) && (@board.grid[2][0] == @board.grid[2][8])
      return "Winner"
    else
      return "No Winner"
    end
  end

  def diagonal_winner
    if
      (@board.grid[0][0] == @board.grid[0][4]) && (@board.grid[0][0] == @board.grid[0][8]) ||
      (@board.grid[2][0] == @board.grid[2][4]) && (@board.grid[2][0] == @board.grid[2][6])
      return "Winner"
    else
      return "No Winner"
    end
  end
end
