require_relative 'board'

class Game

  attr_accessor :board
  attr_reader :turn

  def initialize(board = Board.new)
    @board = board
  end

  def taken?(row, col)
    @board.position_taken?(row, col)
  end

  def out_of_bounds(row, col)
    @board.off_board?(row, col)
  end

  def place_marker(row, col, player)
    # @board.current_turn
    if out_of_bounds(row, col) || taken?(row, col)
      fail "You can't do that"
    else
      @board.player_make_move(row, col, player)
    end
    @board.next_turn
  end

  def winner
    @board.three_in_a_row?
    @board.game_over
  end




end
