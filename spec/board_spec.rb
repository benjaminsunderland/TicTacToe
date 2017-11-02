require 'board'

describe Board do

  subject(:board) {described_class.new}

  describe "When an object is instantiated" do
    it "initializes with a grid" do
      expect(board.grid).to eq([[0,0,0],[0,0,0],[0,0,0]])
    end
  end
end
