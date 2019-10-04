# frozen_string_literal: true

RSpec.describe 'Enumerable' do
  describe '.#all?' do
    it 'testing an array of numbers with a string returns false' do
      expect(numbers_with_a_string.all?(Numeric)).to be false
    end

    it 'testing an array of all numbers returns true' do
      expect(all_numbers.all?(Numeric)).to be true
    end

    # deliberate failure (just test to see if it works inside blocks)
    it 'should raise undefined method' do
      expect { [1, 'foo', false].any?(&:length) }.to raise_error(NoMethodError)
    end
  end

  def numbers_with_a_string
    [1, 2, 3, 'foo']
  end

  def all_numbers
    [1, 2, 3]
  end
end
