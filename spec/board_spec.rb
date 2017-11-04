require 'board'

describe Board do

  subject(:board) {described_class.new}

  describe "When an object is instantiated" do
    it "initializes with a grid" do
      expect(board.grid).to eq([[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]])
    end
  end

  describe "When a game is in action" do
    it "it isn't possible to place a marker off the board" do
      expect(board.off_board?(0, -1)).to eq(true)
    end

    it "is able to see if a spot has been taken" do
      board.player_make_move(0, 0, "x")
      expect(board.position_taken?(0, 0)).to eq(true)
    end

    it "is able for a player to make a move" do
      board.player_make_move(0, 1, "x")
      expect(board.grid[0][1]).to eq("x")
    end

    it 'is possible for players to take turns during the game' do
      board.next_turn
      expect(board.turn).to eq(1)
    end

    it "will create an error if you place a player off the board" do
      expect{board.player_make_move(0, -1, "x")}.to raise_error("You can't do that!")
    end
  end

    describe "when a player wants to win" do
      it "is possible for a player to fill a row horizontally" do
        board.player_make_move(0, 0, "X")
        board.player_make_move(0, 1, "X")
        board.player_make_move(0, 2, "X")
        expect(board.three_in_a_row?).to eq(true)
      end

      it "is possible for a player to fill a row vertically" do
        board.player_make_move(0, 0, "O")
        board.player_make_move(1, 0, "O")
        board.player_make_move(2, 0, "O")
        expect(board.three_in_a_row?).to eq(true)
      end


        it "is possible for a player to fill a row diagonally" do
        board.player_make_move(0, 0, "O")
        board.player_make_move(1, 1, "O")
        board.player_make_move(2, 2, "O")
        expect(board.three_in_a_row?).to eq(true)
      end
   end
end
