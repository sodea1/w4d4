require "card"
class Deck

  attr_accessor :cards

  def initialize
    @cards = Card.create_deck
  end

  def deal
    cards.pop
  end

  def reset
    @cards = Card.create_deck
  end


end