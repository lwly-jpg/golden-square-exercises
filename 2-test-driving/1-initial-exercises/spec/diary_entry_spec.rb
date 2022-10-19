require 'diary_entry'

describe DiaryEntry do
  it 'returns title of book' do
    entry = DiaryEntry.new("Title 1", "Contents 1")
    result = entry.title
    expect(result).to eq "Title 1"
  end

  it 'returns contents of book' do
    entry = DiaryEntry.new("Title 1", "Contents 1")
    result = entry.contents
    expect(result).to eq "Contents 1"
  end

  it 'counts words in contents' do
    entry = DiaryEntry.new("Title 1", "Contents is content.")
    result = entry.count_words
    expect(result).to eq 3
  end

  it 'returns reading time when passed wpm' do
    entry = DiaryEntry.new("Title 1", "Contents is very content.")
    result = entry.reading_time(2)
    expect(result).to eq 2
  end

  it 'returns reading chunk when passed wpm and minutes' do
    entry = DiaryEntry.new("Title 1", "Contents is very content.")
    expect(entry.reading_chunk(2, 1)).to eq "Contents is"
    expect(entry.reading_chunk(2, 1)).to eq "very content."
  end

  it 'returns reading chunk when passed wpm and minutes' do
    entry = DiaryEntry.new("Title 1", "Once upon a time there was a good dog named Makers and then we will just add more words so that the limit is exceeded.")
    expect(entry.reading_chunk(5, 2)).to eq "Once upon a time there was a good dog named"
    expect(entry.reading_chunk(3, 4)).to eq "Makers and then we will just add more words so that the"
  end

end