require 'player'

describe Player do
  subject(:player_one) {described_class.new(name_one, marker_one)}
  subject(:player_two) {described_class.new(name_two, marker_two)}
  let(:name_one) {"Pigeon Banana"}
  let(:name_two) {"Marshmellow Dog"}
  let(:marker_one) {"X"}
  let(:marker_two) {"O"}





  describe "When a player is instantiated" do
    it "will have an set name" do
      expect(player_one.name).to eq("Pigeon Banana")
      expect(player_two.name).to eq("Marshmellow Dog")
    end

    it "Will have a marker" do
      expect(player_one.marker).to eq("X")
      expect(player_two.marker).to eq("O")
    end
  end
end
