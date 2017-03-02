require 'game'
require 'player'

describe Game do
  subject(:game){described_class.new}
  subject(:riker){Player.new("Riker")}
  context '#attack' do
    it 'should attack the opposite player' do
      expect(game.attack(riker)).to eq Player::DEFAULT_HIT_POINTS - 10
    end
  end

end
