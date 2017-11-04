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

  def place_marker(row, col)
    @board.current_turn
    @board.player_make_move(row, col, player)
    @board.next_turn
  end

  def win?
    @board.three_in_a_row?
    @board.game_over
  end




end
