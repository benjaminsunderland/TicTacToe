require_relative 'board'

class Game


  attr_accessor :board

  def initialize(board = Board.new)
    @board = board
    @state = true
    @turn = 0
  end

  def player_make_move(row, col , player)
    @board.grid[row][col] = player
  end

  def next_turn
    @turn += 1
  end

  def current_turn
    @turn.even? ? (return "X") : (return "O")
  end

  def position_taken?(row, col)
    if (@board.grid[row][col] == nil)
      return false
    else
      return true
    end
  end

  def horizontal_winner?
    @board.grid.each do |x| x.detect do |e|
       if x.count(e) >= 3
         return true
        else
         return false
        end
      end
    end
  end

  def vertical_winner

  end

  def diagonal_winner

  end

  def win?
    return true if horizontal_winner
    return true if vertical_winner
    return true if diagonal_winner
  end
end
