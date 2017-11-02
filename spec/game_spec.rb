require 'game'

describe Game do

  subject(:game) {described_class.new(board)}
  let(:board) {double :board, grid: [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]]}




  describe "When a game is started" do
    it "it is initialized with a board" do
      expect(game.board).to eq(board)
    end

    it "is able for a player to make a move" do
      game.player_make_move(0, 1, "x")
      expect(game.board.grid[0][1]).to eq("x")
    end
  end

  describe "when a player wants to win" do
    it "is possible for a player to fill a row horizontally" do
      game.player_make_move(0, 0, "x")
      game.player_make_move(0, 1, "x")
      game.player_make_move(0, 2, "x")
      expect(game.horizontal_winner).to eq("Winner")
    end

    it "is possible for a player to fill a row vertically" do
      game.player_make_move(0, 0, "x")
      game.player_make_move(0, 3, "x")
      game.player_make_move(0, 6, "x")
      expect(game.vertical_winner).to eq("Winner")
    end

    it "is possible for a player to fill a row diagonally" do
      game.player_make_move(0, 0, "x")
      game.player_make_move(0, 4, "x")
      game.player_make_move(0, 8, "x")
      expect(game.diagonal_winner).to eq("Winner")
    end
  end


end
