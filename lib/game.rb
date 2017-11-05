require_relative 'board'
require_relative 'player'

class Game

  attr_accessor :board
  attr_reader :turn, :player_one, :player_two

  def initialize(board = Board.new,
                 player_one = Player.new("Pigeon Banana", "X"),
                 player_two = Player.new("Marshmellow Dog", "O"))

    @board = board
    @player_one = player_one
    @player_one = player_two
  end

  def taken?(row, col)
    @board.position_taken?(row, col)
  end

  def out_of_bounds(row, col)
    @board.off_board?(row, col)
  end

  def place_marker(row, col)
    if out_of_bounds(row, col) || taken?(row, col)
      fail "You can't do that"
    elsif @board.turn.even?
      @board.player_make_move(row, col, "X")
    else
      @board.player_make_move(row, col, "O")
    end
  end

  def winner
    @board.three_in_a_row? ? (return "You Won") : (return "Keep Playing")

  end

  def end_game
    @board = Board.new
  end

end
