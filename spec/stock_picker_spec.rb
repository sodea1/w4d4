require "stock_picker"

describe "#stock_picker" do
  it "needs to take in an array of prices" do
    expect{stock_picker([44, 3, 89, 27])}.to_not raise_error 
    expect{stock_picker(["44", "3", 89, 27])}.to raise_error("Must be an array of numbers")
  end

  it "should output a pair of days with greatest profit" do
    expect(stock_picker([44, 3, 89, 27])).to eq([1, 2])
    expect(stock_picker([4, 73, 89, 27, 123, 22, 53])).to eq([0, 4])
  end

  it "should not sell a stock before you buy it" do
    expect(stock_picker([400, 3, 8, 7])).to_not eq([1, 0])
    expect(stock_picker([44, 73, 90, 27, 123, 22, 53])).to_not eq([6, 5])
  end
  # expect(stock_picker([44, 3])).to eq([])
  

end