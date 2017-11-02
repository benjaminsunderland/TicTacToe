require_relative 'board'

class Game

  attr_accessor :board

  def initialize(board = Board.new)
    @board = board
    @state = true
  end

  def player_make_move(row, col , player)
    @board.grid[row][col] = player
  end

  def horizontal_winner
    @board.grid.map do |x|
    case x
    when %w(o o o)
      return "Winner"
      end
    end
  end



end
