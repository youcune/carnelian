require 'spec_helper'

describe Time do
  describe '#am?' do
    it { expect(Time.new(2016, 1, 10,  0,  0,  0).am?).to be_truthy }
    it { expect(Time.new(2016, 1, 10, 11, 59, 59).am?).to be_truthy }
    it { expect(Time.new(2016, 1, 10, 12,  0,  0).am?).to be_falsey }
    it { expect(Time.new(2016, 1, 10, 23, 59, 59).am?).to be_falsey }
  end

  describe '#pm?' do
    it { expect(Time.new(2016, 1, 10,  0,  0,  0).pm?).to be_falsey }
    it { expect(Time.new(2016, 1, 10, 11, 59, 59).pm?).to be_falsey }
    it { expect(Time.new(2016, 1, 10, 12,  0,  0).pm?).to be_truthy }
    it { expect(Time.new(2016, 1, 10, 23, 59, 59).pm?).to be_truthy }
  end
end
