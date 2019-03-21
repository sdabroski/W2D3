require_relative "card"

class Hand

  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  private

  def straight_flush?
    straight? && flush?
  end

  def four_of_a_kind?

  end

  def full_house?
    
  end

  def flush?
    cards.all? {|card| card.suit == cards.first.suit}
  end

  def straight?
    sorted = cards.sort 
    sorted.each do |card|
      
    end
  end

  def three_of_a_kind?

  end

  def two_pair?

  end

  def one_pair?

  end

  # Does NOT return boolean, returns hightest card
  def high_card

  end

end