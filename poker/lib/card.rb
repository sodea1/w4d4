class Card
  SUITS = %i(HEART SPADE CLUB DIAMOND)
  VALUES = (2..14).to_a

  def self.create_deck
    cards = []
    Card::SUITS.each do |suit|
      Card::VALUES.each do |value|
        cards << Card.new(suit, value)
      end
    end
    cards.shuffle
    cards
  end

  attr_reader :suit, :value

  def initialize(suit, value)
    raise "Not a suit!" if !SUITS.include?(suit)
    raise "Not a value!" if !VALUES.include?(value)
    @suit = suit
    @value = value
  end

  def >(other_card)
    self.value > other_card.value
  end

  def <(other_card)
    self.value < other_card.value
  end

  def ==(other_card)
    self.value == other_card.value
  end

  def to_s
    if self.value < 11
      self.value
    elsif self.value == 11
      "J"
    elsif self.value ==  12
      "Q"
    elsif self.value ==  13
      "K"
    elsif self.value ==  14
      "A"
    end
  end
end