require "hand"

describe Hand do
  subject(:hand) { Hand.new }
  describe "#initialize" do
    it "should initialize to an empty array" do
      expect(hand.cards).to be_empty
    end
  end

  
end