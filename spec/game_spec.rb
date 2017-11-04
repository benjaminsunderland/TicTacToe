require 'game'

describe Game do

  subject(:game) {described_class.new(board)}
  let(:board) {double :board, grid: [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]], position_taken: true}

  before do
  allow(board).to receive(:position_taken)
end

  describe "When a game is started" do
    it "it is initialized with a board" do
      expect(game.board).to eq(board)
    end
  end

  describe "During a game" do
    it "is possible for a position to be taken" do
      allow(board).to receive(:position_taken).and_return(true)
      expect(game.taken?(0,0)).to eq(true)
    end
  end
end
