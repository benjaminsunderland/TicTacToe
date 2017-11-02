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
      expect(game.horizontal_winner).to eq(["x", "x", "x"])
end
