def stock_picker(arr)
  raise "Must be an array of numbers" if !arr.all? { |ele| ele.is_a?(Integer) }

  sorted = arr.sort
  
  sorted.each do |min|
    sorted.reverse.each do |max|
      min_i = arr.index(min) 
      max_i = arr.index(max) 
      return [min_i, max_i] if min_i < max_i && max > min
    end
  end
  []
end