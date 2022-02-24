def stock_picker(arr)
  raise "Must be an array of numbers" if !arr.all? { |ele| ele.is_a?(Integer) }

  min = 0
  max = 0

  arr.each_with_index do |ele, i|
    
    max = i if ele > arr[max]
    min = i if ele < arr[min] && 
  end

  [min, max]

end