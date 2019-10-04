RSpec.describe "Enumerable" do
  describe ".#any?" do
    it "any? returns truthy for at least one value" do
      expect([false, false, true].any?).to be true
    end

    it "any? returns false since all values are false" do
      expect([false, false, false].any?).to be false
    end

    it "any? returns true for a hashmap with a nil key" do
      expect({nil: 42}.any?).to be true
    end
  end
end
