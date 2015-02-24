require 'spec_helper'

describe Integer do
  describe '#split' do
    it { expect(10000.comma).to eq '10,000' }
    it { expect(1.comma).to     eq '1' }
    it { expect(-100000.comma).to eq '-100,000' }
  end
end
