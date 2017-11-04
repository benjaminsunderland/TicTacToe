class Board
  attr_accessor :grid, :turn

  WINNING_COMBINATIONS = [[0, 1, 2], [3, 4, 5],
                          [0, 3, 6], [6, 7, 8],
                          [1, 4, 7], [2, 5, 8],
                          [0, 4, 8], [2, 4, 6]].freeze


  def initialize
    @grid = [[nil, nil, nil],
             [nil, nil, nil],
             [nil, nil, nil]]
    @turn = 0
  end

  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts '-----------'
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts '-----------'
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end


  def player_make_move(row, col, player)
    # fail "The game is over!" if win?
    raise "You can't do that!" if off_board?(row, col)
    @grid[row][col] = player
    next_turn
  end


  def off_board?(row, col)
    return true if (row < 0 || row > 2) || (col < 0 || col > 2)
  end

  def next_turn
    @turn += 1
  end

  def position_taken?(row, col)
    if @grid[row][col].nil?
      false
    else
      true
    end
  end

  def current_turn
    @turn.even? ? (return 'X') : (return 'O')
  end

  def three_in_a_row?

    flat_board = @grid.flatten
    x_matches = flat_board.each_index.select { |i| flat_board[i] == 'X' }
    o_matches = flat_board.each_index.select { |i| flat_board[i] == 'O' }

    WINNING_COMBINATIONS.each do |line|
      if (line - x_matches).empty?
        return true
      elsif (line - o_matches).empty?
        return true
       end
    end
    false
  end

  def game_over
    "The game is over!"
  end
end
