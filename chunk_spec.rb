RSpec.describe "Enumerable" do
  describe ".#chunk" do
    it "chunks an array" do
      expect([1,2,3, :foo, "bar"].chunk { |w| w if w.class == Integer}).to match_array([[1, [1]], [2, [2]], [3, [3]]])
    end
  end

  describe ".#chunk_while" do
    it "splits the array into chunks of 2 elements" do
      expect(even_3s.chunk_while { |c, d| [c, d] if d == 3}).to match_array(chunked_even_3s)
    end
  end

  def even_3s
    [1,3,2,3,4,3,5,3]
  end

  def chunked_even_3s
    [[1,3], [2,3], [4,3], [5,3]]
  end
end
