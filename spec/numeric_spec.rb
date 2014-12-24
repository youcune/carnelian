require 'spec_helper'

describe Numeric do
  describe '#percent' do
    it 'returns true or false' do
      result = 50.percent
      expect(result).to satisfy { |_| _ == true || _ == false }
    end

    it 'returns true when 100 percent' do
      result = 100.percent
      expect(result).to be true
    end

    it 'returns false when 0 percent' do
      result = 0.percent
      expect(result).to be false
    end
  end
end
