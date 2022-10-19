# frozen_string_literal: false

require 'counter'

describe Counter do
  before :each do
    @counter = Counter.new
  end
  context 'initialized' do
    it 'when initialized has a count of 0' do
      result = @counter.count
      expect(result).to eq 0
    end
  end
  context '#report' do
    it 'returns 0 in report when initialized' do
      result = @counter.report
      expect(result).to eq 'Counted to 0 so far.'
    end
  end
  context '#add' do
    it 'returns 3 when given 3' do
      @counter.add(3)
      result = @counter.report
      expect(result).to eq 'Counted to 3 so far.'
    end

    it 'returns -1 when given -1' do
      @counter.add(-1)
      result = @counter.report
      expect(result).to eq 'Counted to -1 so far.'
    end

    it 'returns 0.5 when given 0.5' do
      @counter.add(0.5)
      result = @counter.report
      expect(result).to eq 'Counted to 0.5 so far.'
    end

    it 'returns 729371973981749162312987120937981274916234197874389217301273912739 when given 729371973981749162312987120937981274916234197874389217301273912739' do
      @counter.add(729371973981749162312987120937981274916234197874389217301273912739)
      result = @counter.report
      expect(result).to eq 'Counted to 729371973981749162312987120937981274916234197874389217301273912739 so far.'
    end
  
  end
end
