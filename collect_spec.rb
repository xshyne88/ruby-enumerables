RSpec.describe "Enumerable" do
  describe ".#collect" do
    it "converts all elements according to the block" do
      expect(numbers.collect { true })
        .to match_array([true, true, true, true])
    end

    describe ".#collect_concat" do
      it "converts all elements according to the block" do
        expect(numbers.collect_concat { |k| [k, true] }).to match_array([1, true, 2, true, 3, true, 4, true])
      end
    end
  end

  def numbers
    [1, 2, 3, 4] 
  end
end
