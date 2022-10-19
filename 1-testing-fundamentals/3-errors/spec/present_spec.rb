require 'present'

describe Present do
  context 'when contents have already been wrapped' do
    it 'fails' do
      present = Present.new
      present.wrap('socks')
      expect { present.wrap('books') }.to raise_error 'A contents has already been wrapped.'
    end
  end
  context 'when no contents have been wrapped' do
    it 'fails' do
      present = Present.new
      expect { present.unwrap }.to raise_error 'No contents have been wrapped.'
    end
  end
end
