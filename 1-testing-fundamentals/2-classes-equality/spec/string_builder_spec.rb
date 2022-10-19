# frozen_string_literal: false

require 'string_builder'

describe StringBuilder do
  before :each do
    @string = StringBuilder.new
  end

  context 'initialized' do
    it 'returns a new string object' do
      expect(@string).to be_an_instance_of StringBuilder
    end

    it 'returns a empty string when initialized' do
      result = @string.str
      expect(result).to eq ''
    end

    it 'returns size of 0 when initialized' do
      result = @string.size
      expect(result).to eq 0
    end
  end

  context 'given one addition of a string' do
    it 'outputs "this is weird" when added "this is weird"' do
      @string.add('this is weird')
      result = @string.output
      expect(result).to eq 'this is weird'
    end
  end

  context 'given many additions of a string' do
    it 'outputs some string' do
      @string.add('this')
      @string.add('is')
      @string.add('nice')
      result = @string.output
      expect(result).to eq 'thisisnice'
    end
  end

  it 'outputs 5 when added "seven"' do
    @string.add('seven')
    result = @string.size
    expect(result).to eq 5
  end
end
