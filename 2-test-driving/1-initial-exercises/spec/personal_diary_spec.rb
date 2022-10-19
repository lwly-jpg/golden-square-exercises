require 'personal_diary'

describe "make_snippet method" do
  it "returns string of five words or less" do
    result = make_snippet("This is five word string.")
    expect(result).to eq "This is five word string."
  end

  it "returns first five words then '...' for string longer than five words" do
    result = make_snippet("This string is longer than five words.")
    expect(result).to eq "This string is longer than ..."
  end
end