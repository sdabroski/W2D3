require 'deck'

RSpec.describe Deck do
  subject(:deck) { Deck.new }

  describe "#cards" do
    it "returns array of 52 cards" do
      expect(deck.cards.length).to eq 52
    end

    it "returns array of Card instances" do
      expect(deck.cards).to all(be_an_instance_of(Card))
    end

    it "each card should be unique" do
      expect(deck.cards.map{ |card| "#{card.suit}#{card.value}" }.uniq.length).to eq(52)
    end
  end

  describe "#shuffle" do
    it "shuffles the cards" do
      d2 = Deck.new
      expect(deck.shuffle).to_not eq(d2)
    end
  end

  describe "#draw" do
    it "returns a Card" do
      expect(deck.draw).to be_a(Card)
    end

    it "reduces the cards by one" do
      deck.draw
      expect(deck.cards.length).to eq(51)
    end
  end
end