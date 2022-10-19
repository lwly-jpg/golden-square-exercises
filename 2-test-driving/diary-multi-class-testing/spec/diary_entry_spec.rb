require 'diary_entry'

describe DiaryEntry do
  context 'when entries are added' do
    it 'returns title and contents' do
      my_entry = DiaryEntry.new("title", "contents")
      expect(my_entry.title).to eq "title"
      expect(my_entry.contents).to eq "contents"
    end

    it 'returns word count of contents' do
      my_entry = DiaryEntry.new("title", "this is six words of content")
      expect(my_entry.count_words).to eq 6
    end

    it 'returns reading time of contents' do
      my_entry = DiaryEntry.new("title", "this is six words of content")
      expect(my_entry.reading_time(2)).to eq 3
    end

    it 'raises error for reading if wpm is 0' do
      my_entry = DiaryEntry.new("title", "this is six words of content")
      expect {my_entry.reading_time(0)}.to raise_error 'Error: reading time must be greater than 0.'
    end

    it 'returns reading chunk when passed wpm and minutes' do
      my_entry = DiaryEntry.new("Title 1", "Once upon a time there was a good dog named Makers and then we will just add more words so that the limit is exceeded.")
      expect(my_entry.reading_chunk(5, 2)).to eq "Once upon a time there was a good dog named"
      expect(my_entry.reading_chunk(3, 4)).to eq "Makers and then we will just add more words so that the"
    end

    it 'restarts after reading whole contents with an exact finish' do
      my_entry = DiaryEntry.new("Title 1", "One two three four five six.")
      expect(my_entry.reading_chunk(3, 1)).to eq "One two three"
      expect(my_entry.reading_chunk(3, 1)).to eq "four five six."
      expect(my_entry.reading_chunk(3, 1)).to eq "One two three"
    end

    it 'restarts after reading whole contents without an exact finish' do
      my_entry = DiaryEntry.new("Title 1", "One two three four five six.")
      expect(my_entry.reading_chunk(2, 1)).to eq "One two"
      expect(my_entry.reading_chunk(3, 1)).to eq "three four five"
      expect(my_entry.reading_chunk(2, 1)).to eq "six."
      expect(my_entry.reading_chunk(3, 1)).to eq "One two three"
    end

  end
end