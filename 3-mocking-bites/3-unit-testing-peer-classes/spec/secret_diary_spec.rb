require 'secret_diary'

describe SecretDiary do
  
  context 'if diary is unlocked' do
    it 'returns its contents' do
      test_entry = double(:test_entry, contents: "hi this is my first diary entry")
      allow(test_entry).to receive(:read).and_return("hi this is my first diary entry")
      my_secret_diary = SecretDiary.new(test_entry)
      my_secret_diary.unlock
      expect(my_secret_diary.read).to eq "hi this is my first diary entry"
    end

    it 'returns empty string if there are no contents' do
      test_entry = double(:test_entry, contents: "")
      allow(test_entry).to receive(:read).and_return("")
      my_secret_diary = SecretDiary.new(test_entry)
      my_secret_diary.unlock
      expect(my_secret_diary.read).to eq ""
    end

  end

  context 'if diary is locked' do

    it 'unlocks diary' do
      test_entry = double(:test_entry, contents: "hi this is my first diary entry")
      my_secret_diary = SecretDiary.new(test_entry)
      my_secret_diary.unlock
      expect(my_secret_diary.unlock).to eq false
    end

    it 'locks diary' do
      test_entry = double(:test_entry, contents: "hi this is my first diary entry")
      my_secret_diary = SecretDiary.new(test_entry)
      my_secret_diary.unlock
      my_secret_diary.lock
      expect(my_secret_diary.lock).to eq true
    end

    it 'raises error when reading contents is called' do
      test_entry = double(:test_entry, contents: "hi this is my first diary entry")
      my_secret_diary = SecretDiary.new(test_entry)
      expect{my_secret_diary.read}.to raise_error "Go away!"
    end
  end
end