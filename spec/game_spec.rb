require 'game'

describe Game do

  subject(:game) {described_class.new(board)}
  let(:board) {double :board, grid: [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]]}

  describe "When a game is started" do
    it "it is initialized with a board" do
      expect(game.board).to eq(board)
    end
  end

  describe "During a game" do
    it "is possible for a position to be taken" do
      allow(board).to receive(:position_taken?).and_return(true)
      expect(game.taken?(0,1)).to eq(true)
    end

    it "isn't possible to place a marker out of the grid" do
      allow(board).to receive(:off_board?).and_return(true)
      expect(game.out_of_bounds(0, -1)).to eq(true)
    end

    it "is possible to place your marker" do
      allow(board).to receive(:current_turn).and_return("X")
      allow(board).to receive(:position_taken?).and_return(false)
      allow(board).to receive(:off_board?).and_return(false)
      allow(board).to receive(:player_make_move).with(1, 1, "X")
      allow(board).to receive(:next_turn).and_return(1)
      game.place_marker(1, 1, "X")
    end
  end

  describe "At the end of a game" do
    it "is possible to win" do
      allow(board).to receive(:three_in_a_row?).and_return(true)
      expect(game.winner?).to eq(true)
    end
  end
end
