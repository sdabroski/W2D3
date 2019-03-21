require 'card'


RSpec.describe Card do
  describe("#value") do
    it "returns the card's value" do
      expect(Card.new("spade", 2).value).to eq( 2 )
    end
  end

  describe("#suit") do
    it "returns the card's suit" do
      expect(Card.new("spade", 2).suit).to eq( "spade" )
    end
  end

  describe("#to_s") do
    it "returns the card's 'prettified' print value" 
  end

end
