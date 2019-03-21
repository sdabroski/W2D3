require 'hand'

RSpec.describe Hand do
  let(:cards) { double('cards') }
  subject(:hand) { Hand.new(cards) }

  describe "#initialize" do
    it "sets the cards to input" do
      expect(hand.cards).to eq cards
    end
  end
end