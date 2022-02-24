class TowerOfHanoi
  attr_accessor :rods

  def initialize
    @rods = [[4, 3, 2, 1], [], []]
  end

  def move_disk(from_rod, to_rod)
    disk = rods[from_rod].pop
    if !rods[to_rod].empty? && rods[to_rod].last < disk
      raise "Can't place larger on smaller disk" 
    end
    rods[to_rod].push(disk)
  end

end