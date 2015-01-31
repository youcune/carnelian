require 'spec_helper'

describe Date do
  describe '#slash' do
    it 'returns YYYY/MM/DD style of date' do
      result = Date.new(2015, 1, 31).slash
      expect(result).to eq '2015/01/31'
    end
  end
end
