class Card
  attr_accessor :suit, :value

  SUITS = {
    spade: "♠",
    heart: "💔",
    diamond: "♦️",
    club: "♣️"
  }

  SUIT_VALUES = {
    spade: 4,
    heart: 3,
    diamond: 2,
    club: 1
  }

  VALUES = {
    1 => "A",
    2 => "2",
    3 => "3",
    4 => "4",
    5 => "5",
    6 => "6",
    7 => "7",
    8 => "8",
    9 => "9",
    10 => "10",
    11 => "J",
    12 => "Q",
    13 => "K"
  }

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def to_s
    "#{SUITS[suit]}:#{VALUES[value]}"
  end

  def <=>(a, b)
    value_comparison = a.value <=> b.value
    return SUIT_VALUES[a.suit] <=> SUIT_VALUES[b.suit] if value_comparison == 0
    value_comparison
  end


end