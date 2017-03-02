require 'player'

describe Player do
  subject(:player) { described_class.new("Harry Kim") }
  describe "#name" do
    it "should return a player's name" do
      expect(player.name).to eq "Harry Kim"
    end
  end
end
