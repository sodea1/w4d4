require "card"

describe Card do
  subject(:card) { Card.new(:HEART, 10) }
  describe "#initialize" do
    it "should accept a suit and value" do
      expect{Card.new(:HEART, 10)}.to_not raise_error
      expect{Card.new(:HEART, 14)}.to_not raise_error
    end

    it "should not accept a non-card argument" do
      expect{Card.new(:Banana, 10)}.to raise_error("Not a suit!")
      expect{Card.new(:HEART, 30)}.to raise_error("Not a value!")
      expect{Card.new(:HEART, :A)}.to raise_error("Not a value!")
    end
  end

  describe "::create_deck" do
    let(:deck) { Card.create_deck }
    it "should create a deck of 52 cards" do
      expect(deck.size).to eq(52)
    end

    it "should be a shuffled deck" do 
      first_four_values = deck[0...4]
      value = deck.first
      expect(first_four_values).to_not match_array([value, value, value, value])
    end
  end

  describe "comparisons" do 
    let(:card1) { Card.new(:HEART, 13)}
    let(:card2) { Card.new(:HEART, 2)}
    let(:card3) { Card.new(:SPADE, 2)}
    
    describe "#>" do
      it "should compare left card is greater than right" do
        expect(card1 > card2).to eq(true)
        expect(card2 > card1).to eq(false)
      end
    end

    describe "#<" do
      it "should compare left card is less than right" do
        expect(card1 < card2).to eq(false)
        expect(card2 < card1).to eq(true)
      end
    end

    describe "#==" do
      it "should return true if card values are equal" do
        expect(card1 == card2).to eq(false)
        expect(card2 == card3).to eq(true)
      end
    end
  
  end
end