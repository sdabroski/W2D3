require_relative 'card'

class Deck
  attr_accessor :cards

  def initialize
    @cards = create_cards
  end

  def shuffle
    cards.shuffle!
  end

  def draw
    cards.pop
  end

  def empty?
    cards.empty?
  end

  private

  def create_cards
    suits = %w[spade heart diamond club]
    values = (1..13).to_a
    cards = []

    suits.each do |suit| 
      values.each do |value|
        cards << Card.new(suit, value)
      end
    end
    cards
  end
end
