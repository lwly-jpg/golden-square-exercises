require 'diary'

describe Diary do
  context 'nothing is added' do
    it 'returns empty list of thoughts' do
      my_diary = Diary.new
      expect(my_diary.show_thoughts).to eq []
    end

    it 'returns empty list of todos' do
      my_diary = Diary.new
      expect(my_diary.show_list).to eq []
    end
  end

end