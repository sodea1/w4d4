class Array
  def my_uniq
    hash = Hash.new()

    self.each do |el|
      hash[el] = true
    end

    return hash.keys
  end

  def two_sum
    pairs = []
    (0...self.length).each do |i|
      (i+1...self.length).each do |j|
        pairs << [i,j] if self[i] + self[j] == 0
      end
    end
    pairs
  end

  def my_transpose
    new_arr = []
    (0...self[0].length).each do |i|
      sub_arr = []
      self.each do |row|
        sub_arr << row[i]
      end
      new_arr << sub_arr
    end
    new_arr
  end

end