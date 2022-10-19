require 'grammar_stats'

describe GrammarStats do

  it 'returns true if string starts with capital letter' do
    sentence = GrammarStats.new
    result = sentence.check("This starts with capital.")
    expect(result).to eq true
  end

  it 'returns true if string ends with suitable punctiation' do
    sentence = GrammarStats.new
    result = sentence.check("This starts with capital.")
    expect(result).to eq true
  end

  it 'returns a percentage of texts checked so far that pass the check method' do
    sentence = GrammarStats.new
    sentence.check("This starts with capital.")
    expect(sentence.percentage_good).to eq "100%"
    sentence.check("this starts with capital.")
    expect(sentence.percentage_good).to eq "50%"
    sentence.check("TTThis starts with capital!!!")
    expect(sentence.percentage_good).to eq "66%"
  end

end