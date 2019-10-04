RSpec.describe "Enumerable" do
  describe ".#flat_map" do
    it "converts all elements according to the block" do
      expect(numbers.flat_map { |x| x}).to match_array([1, 2, 3, [], 4])
    end
  end

  def numbers
    [1, [2], [3, []], 4] 
  end
end
