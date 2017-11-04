require_relative 'board'

class Game

  attr_accessor :board
  attr_reader :turn

WINNING_COMBINATIONS = [[0,1,2],[3,4,5],
                        [0,3,6],[6,7,8],
                        [1,4,7],[2,5,8],
                        [0,4,8],[2,4,6]]

  def initialize(board = Board.new)
    @board = board
    @in_game = true
    @turn = 0
  end

  def player_make_move(row, col , player)
    # fail "The game is over!" if win?
    fail "You can't do that!" if off_board?(row, col)
    @board.grid[row][col] = player
    next_turn
  end

  def next_turn
    @turn += 1
  end

  def current_turn
    @turn.even? ? (return "X") : (return "O")
  end

  def off_board?(row, col)
   return true if (row < 0 || row > 2) || (col < 0 || col > 2)
  end

  def position_taken?(row, col)
    if (@board.grid[row][col] == nil)
      return false
    else
      return true
    end
  end

  def three_in_a_row?
    flat_board = @board.grid.flatten
    x_matches = flat_board.each_index.select {|i| flat_board[i] == "X"}
    o_matches = flat_board.each_index.select {|i| flat_board[i] == "O"}

    WINNING_COMBINATIONS.each do |line|
      if (line - x_matches).empty?
        return true
      elsif (line - o_matches).empty?
  		  return true
      end
  	end
  	return false
  end

  def win?
    return true if horizontal_winner?
    return true if vertical_winner?
    return true if diagonal_winner?
    @in_game = false
  end
end
