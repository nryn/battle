require 'player'

describe Player do
  subject(:player) { described_class.new("Harry Kim") }
  describe "#name" do
    it "should return a player's name" do
      expect(player.name).to eq "Harry Kim"
    end
  end
  describe '#hit_points' do
    it "shows us the player's hit points" do
      expect(player.hit_points).to eq 100
    end
  end
  describe '#reduce_hit_points' do
    it "takes away 10hp when attacked" do
      expect(player.reduce_hit_points).to eq 90
    end
  end
end
