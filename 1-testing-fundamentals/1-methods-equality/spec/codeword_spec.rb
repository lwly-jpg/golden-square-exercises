require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "returns 'Correct! Come in.' when passed 'horse'" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "returns 'Close, but nope.' when passed 'house'" do
    result = check_codeword("house")
    expect(result).to eq "Close, but nope."
  end

  it "returns 'WRONG!' when passed 'password'" do
    result = check_codeword("password")
    expect(result).to eq "WRONG!"
  end
end