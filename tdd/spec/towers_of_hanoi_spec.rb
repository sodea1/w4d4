require "towers_of_hanoi"

describe TowerOfHanoi do
  subject(:tower) { TowerOfHanoi.new }
  describe "#initialize" do 
    it "should createan array of three arrays" do
      expect(tower.rods).to eq([[4, 3, 2, 1], [], []])
    end
  end

  describe "#move_disk" do
    it "should move top disk from one rod to another" do
      tower.move_disk(0, 1)
      expect(tower.rods).to eq([[4, 3, 2], [1], []])
      tower.move_disk(1, 2)
      expect(tower.rods).to eq([[4, 3, 2], [], [1]])
    end

    let(:tower_two) { TowerOfHanoi.new }
    it "should not place a larger disk on top of a smaller disk" do
      tower_two.rods = [[4,3], [2], [1]]
      expect{ tower_two.move_disk(1, 2) }.to raise_error("Can't place larger on smaller disk")
    end
  end

end

# Only one disk may be moved at a time.
# Each move consists of taking the upper disk from one of the stacks and placing it on top of another stack or on an empty rod.
# No disk may be placed on top of a disk that is smaller than it.