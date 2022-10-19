require 'gratitudes'

describe Gratitudes do
  before :each do
    @grateful = Gratitudes.new
  end

  it 'returns an instance of Gratitudes' do
    expect(@grateful).to be_an_instance_of Gratitudes
  end

  it 'initializes an empty array' do
    result = @grateful.gratitudes
    expect(result).to eq []
  end

  it 'adds "joe" to array when passed "joe"' do
    @grateful.add('joe')
    result = @grateful.gratitudes
    expect(result).to eq ['joe']
  end

  it 'adds many strings to array' do
    @grateful.add('luke')
    @grateful.add('builders')
    @grateful.add('november')
    result = @grateful.gratitudes
    expect(result).to eq %w[luke builders november]
  end

  it 'returns "Be grateful for: " when passed nothing' do
    result = @grateful.format
    expect(result).to eq 'Be grateful for: '
  end

  it 'returns "Be grateful for: money, love, sunshine" when #format' do
    @grateful.gratitudes = %w[money love sunshine]
    result = @grateful.format
    expect(result).to eq 'Be grateful for: money, love, sunshine'
  end

  context 'integration testing' do
    it 'returns "Be grateful for: luke, builders, november" when add several strings' do
      @grateful.add('luke')
      @grateful.add('builders')
      @grateful.add('november')
      result = @grateful.format
      expect(result).to eq 'Be grateful for: luke, builders, november'
    end
  end
end
