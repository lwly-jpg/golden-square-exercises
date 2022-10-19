
require 'grammar_checker'

describe 'grammer_checker method' do
  it "returns grammar check passed if text starts with capital and ends with full stop" do
    result = grammar_checker("Starts with capital, ends with full stop.")
    expect(result).to eq "Grammar check passed: text starts with capital, ends with suitable sentence-ending punctuation mark."
  end

  it "returns grammar check failed if text does not start with capital but ends with suitable sentence-ending punctuation mark" do
    result = grammar_checker("no capital, ends with question mark?")
    expect(result).to eq "Grammar fail: text does not start with capital, but ends with suitable sentence-ending punctuation mark."
  end

  it "returns grammar check failed if text starts with capital but does not end with suitable sentence-ending punctuation mark" do
    result = grammar_checker("Starts with capital, does not end with exclamation")
    expect(result).to eq "Grammar fail: text starts with capital, but does not end with suitable sentence-ending punctuation mark."
  end

  it "returns grammar check failed if text does not start with capital and does not end with suitable sentence-ending punctuation mark" do
    result = grammar_checker("no capital, no punctuation at end")
    expect(result).to eq "Grammar fail: text does not start with capital and does not end with suitable sentence-ending punctuation mark."
  end

  it "returns grammar check failed if text does not start with capital and does not end with suitable sentence-ending punctuation mark" do
    result = grammar_checker("no capital, no punctuation at end-")
    expect(result).to eq "Grammar fail: text does not start with capital and does not end with suitable sentence-ending punctuation mark."
  end


end