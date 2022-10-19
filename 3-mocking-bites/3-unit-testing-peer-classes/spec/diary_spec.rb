require 'diary'

describe Diary do
  it 'returns contents of diary' do
    my_diary = Diary.new("hi this is my first diary entry")
    expect(my_diary.read).to eq "hi this is my first diary entry"
  end

end