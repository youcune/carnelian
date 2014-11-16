require 'spec_helper'

describe String do
  describe '#mkpasswd' do
    it 'returns password with 16 chars' do
      result = String.mkpasswd
      expect(result).to be_an_instance_of String
      expect(result.length).to eq 16
    end

    it 'returns password with the specific length' do
      result = String.mkpasswd(length: 32)
      expect(result).to be_an_instance_of String
      expect(result.length).to eq 32
    end
  end
end
