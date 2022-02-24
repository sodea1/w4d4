require "array"

describe Array do
  describe "#my_uniq" do
  let(:arr) { [4,5,6,5,5,7,6] }
    it "should remove duplicates" do
      expect(arr.my_uniq).to eq([4,5,6,7])
    end

    it "should create a new array" do
      expect(arr).to_not be(arr.my_uniq)
    end
  end

  describe "#two_sum" do
  let(:arr) { [5,3,4,-5,8,-7,7] }
    it "should return all pairs of positions where the elements in those positions sum to zero" do
      expect(arr.two_sum).to eq([[0,3], [5,6]])
    end
  end

  describe "#my_transpose" do
  let(:arr) {[
    [0,1,2],
    [3,4,5],
    [6,7,8]
  ]}
    it "should convert between row-oriented and column-oriented representations" do
      expect(arr.my_transpose).to eq(
         [[0, 3, 6],
          [1, 4, 7],
          [2, 5, 8]]
      )
    end
  end
end