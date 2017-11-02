require_relative 'board'

class Game

  attr_accessor :board

  def initialize(board = Board.new)
    @board = board
  end

  def player_make_move(row, col , player)
    @board.grid[row][col] = player
  end
end
