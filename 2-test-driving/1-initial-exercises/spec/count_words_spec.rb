require 'count_words'

describe 'count_words method' do
  it 'returns 0 for empty string' do
    result = count_words("")
    expect(result).to eq 0
  end

  it 'returns 5 for a "This is five word string"' do
    result = count_words("This is five word string")
    expect(result).to eq 5
  end
end