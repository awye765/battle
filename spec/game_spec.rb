require './lib/game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe "#name" do
    it "retrieves the player_1 name" do
      expect(game.player_1).to eq player_1
    end
  end

  describe "#attack" do
    it "damages the player" do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end
