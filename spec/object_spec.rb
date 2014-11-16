require 'spec_helper'

describe Object do
  describe '#try_chain' do
    subject { %w(ABC DEF GHI) }

    it 'returns self without any args' do
      result = subject.try_chain
      expect(result).to eq subject
    end

    it 'returns the result of the specific method with only one arg' do
      result = subject.try_chain(:first)
      expect(result).to eq 'ABC'
    end

    it 'returns the result of the chained methods with multiple args' do
      result = subject.try_chain(:first, :chop, :succ)
      expect(result).to eq 'AC'
    end

    it 'returns nil if any of methods return nil' do
      result = subject.try_chain(:first, :uniq!, :chop, :succ)
      expect(result).to be_nil
    end

    it 'returns nil if any of methods raise NoMethodError' do
      result = subject.try_chain(:first, :invalid_method, :chop, :succ)
      expect(result).to be_nil
    end
  end
end
