require 'game'

describe Game do

  subject(:game) {described_class.new(board)}
  let(:board) {double :board, grid: [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]]}

  describe "When a game is started" do
    it "it is initialized with a board" do
      expect(game.board).to eq(board)
    end
  end

  describe "When a game is in action" do
    it "is able to change player" do
      game.next_turn
      expect(game.current_turn).to eq("O")
    end

    it "is able for a player to make a move" do
      game.player_make_move(0, 1, "x")
      expect(game.board.grid[0][1]).to eq("x")
    end

    it "is able to see if a spot has been taken" do
      game.player_make_move(0, 0, "x")
      expect(game.position_taken?(0, 0)).to eq(true)
    end
  end

  describe "when a player wants to win" do
    it "is possible for a player to fill a row horizontally" do
      game.player_make_move(0, 0, "x")
      game.player_make_move(0, 1, "x")
      game.player_make_move(0, 2, "x")
      pending
    end

    it "is possible for a player to fill a row vertically" do
      game.player_make_move(0, 0, "x")
      game.player_make_move(0, 3, "x")
      game.player_make_move(0, 6, "x")
      pending
    end

    it "is possible for a player to fill a row diagonally" do
      game.player_make_move(0, 0, "x")
      game.player_make_move(0, 4, "x")
      game.player_make_move(0, 8, "x")
      pending
    end
  end
end
