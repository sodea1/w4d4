require "deck"

describe Deck do 
  subject(:deck) { Deck.new }
  describe "#initialize" do
    it "should create a deck of 52 cards" do
      expect(deck.cards.size).to eq(52)
    end
  end

  describe "#deal" do
    it "should deal a card from itself" do
      result = deck.deal
      expect(result).to be_a(Card)
      expect(deck.cards.size).to eq(51)
    end
  end

  describe "#reset" do
    it "should create a new deck" do
      deck.reset
      expect(deck.cards.size).to eq(52)
    end
  end


end