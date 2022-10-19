require 'diary'
require 'diary_entry'

describe 'integration' do

  context 'when entries are added' do
    it 'returns list of all entries' do
      my_diary = Diary.new
      new_entry_1 = DiaryEntry.new("5th dec", "dear diary today was a great day.")
      new_entry_2 = DiaryEntry.new("10th dec", "dear diary it is almost christmas I believe")
      my_diary.add(new_entry_1)
      my_diary.add(new_entry_2)
      expect(my_diary.all).to eq [new_entry_1, new_entry_2]
    end

    it 'returns count of words of all entries' do
      my_diary = Diary.new
      new_entry_1 = DiaryEntry.new("5th dec", "dear diary today was a great day.")
      new_entry_2 = DiaryEntry.new("10th dec", "dear diary it is almost Christmas I believe.")
      my_diary.add(new_entry_1)
      my_diary.add(new_entry_2)
      expect(my_diary.count_words).to eq 15
    end

    it 'returns reading time in minutes if the user were to read all entries' do 
      my_diary = Diary.new
      new_entry_1 = DiaryEntry.new("5th dec", "dear diary today was a great day.")
      new_entry_2 = DiaryEntry.new("10th dec", "dear diary it is almost Christmas I believe.")
      my_diary.add(new_entry_1)
      my_diary.add(new_entry_2)
      expect(my_diary.reading_time(5)).to eq 3
    end

    it 'returns raises error if wpm is 0' do 
      my_diary = Diary.new
      new_entry_1 = DiaryEntry.new("5th dec", "dear diary today was a great day.")
      my_diary.add(new_entry_1)
      expect {my_diary.reading_time(0)}.to raise_error 'Error: reading time must be greater than 0.'
    end

    context 'with one entry in readable time' do
      it 'returns entry' do
        my_diary = Diary.new
        my_entry_short = DiaryEntry.new("5th dec", "Hello how are you this is a ten word entry")
        my_diary.add(my_entry_short)
        result = my_diary.find_best_entry_for_reading_time(10, 1)
        expect(result).to eq my_entry_short
      end
    end

    context 'with one entry not in readable time' do
      it 'returns nil' do
        my_diary = Diary.new
        my_entry_short = DiaryEntry.new("5th dec", "Hello how are you this is a ten word entry")
        my_diary.add(my_entry_short)
        result = my_diary.find_best_entry_for_reading_time(5, 1)
        expect(result).to eq nil
      end
    end

    context 'with multiple entries' do
      it 'returns instance of diary entry representing closest to length that user could read in minutes available given their reading speed' do
        my_diary = Diary.new
        my_entry_short = DiaryEntry.new("5th dec", "Hello how are you this is a ten word entry")
        my_entry_medium = DiaryEntry.new("10th dec", "Hello how are you this is a twenty word entry. Hello how are you this is a twenty word entry")
        my_diary.add(my_entry_short)
        my_diary.add(my_entry_medium)
        result = my_diary.find_best_entry_for_reading_time(10, 1)
        expect(result).to eq my_entry_short
      end

      it 'returns instance of diary entry representing closest to length that user could read in minutes available given their reading speed' do
        my_diary = Diary.new
        my_entry_short = DiaryEntry.new("5th dec", "Hello how are you this is a ten word entry")
        my_entry_medium = DiaryEntry.new("10th dec", "Hello how are you this is a twenty word entry. Hello how are you this is a twenty word entry")
        my_diary.add(my_entry_short)
        my_diary.add(my_entry_medium)
        result = my_diary.find_best_entry_for_reading_time(10, 1)
        expect(result).to eq my_entry_short
      end
    end
  end
end