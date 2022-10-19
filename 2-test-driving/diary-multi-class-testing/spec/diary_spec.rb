require 'diary'

describe Diary do
  context 'initially' do
    it 'returns empty list' do
      my_diary = Diary.new
      expect(my_diary.all).to eq []
    end

  end
end
