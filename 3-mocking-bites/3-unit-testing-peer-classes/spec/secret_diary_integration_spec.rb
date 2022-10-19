require 'secret_diary'
require 'diary'

describe 'integration tests' do

  context 'if diary is unlocked' do
    it 'returns its contents' do
      new_entry = Diary.new("hi this is my first diary entry")
      my_secret_diary = SecretDiary.new(new_entry)
      my_secret_diary.unlock
      expect(my_secret_diary.read).to eq "hi this is my first diary entry"
    end

    it 'returns empty string if there are no contents' do
      new_entry = Diary.new("")
      my_secret_diary = SecretDiary.new(new_entry)
      my_secret_diary.unlock
      expect(my_secret_diary.read).to eq ""
    end

  end

  context 'if diary is locked' do

    it 'unlocks diary' do
      test_entry = double(:test_entry, contents: "hi this is my first diary entry")
      new_entry = Diary.new("hi this is my first diary entry")
      my_secret_diary = SecretDiary.new(new_entry)
      my_secret_diary.unlock
      expect(my_secret_diary.unlock).to eq false
    end

    it 'locks diary' do
      test_entry = double(:test_entry, contents: "hi this is my first diary entry")
      new_entry = Diary.new("hi this is my first diary entry")
      my_secret_diary = SecretDiary.new(new_entry)
      my_secret_diary.unlock
      my_secret_diary.lock
      expect(my_secret_diary.lock).to eq true
    end

    it 'raises error when reading contents is called' do
      new_entry = Diary.new("hi this is my first diary entry")
      my_secret_diary = SecretDiary.new(new_entry)
      expect{my_secret_diary.read}.to raise_error "Go away!"
    end
  end
end