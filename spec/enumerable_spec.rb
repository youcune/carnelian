require 'spec_helper'

describe Enumerable do
  describe '#sum' do
    it 'sums up all elements' do
      result = [1, 2, 6].sum
      expect(result).to eq 9
    end

    it 'returns the element if the Enumerable contains only one element' do
      result = [7].sum
      expect(result).to eq 7
    end

    it 'returns nil if the Enumerable is empty' do
      result = [].sum
      expect(result).to eq nil
    end
  end

  describe '#avg' do
    it 'averages all elements' do
      result = [1, 2, 6].avg
      expect(result).to eq 3
    end

    it 'returns the element if the Enumerable contains only one element' do
      result = [7].avg
      expect(result).to eq 7
    end

    it 'returns nil if the Enumerable is empty' do
      result = [].avg
      expect(result).to eq nil
    end
  end
end
