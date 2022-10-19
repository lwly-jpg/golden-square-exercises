require 'say_hello'

describe "say_hello method" do
  it "returns hello henry when passed henry" do
    result = say_hello("henry")
    expect(result).to eq "hello henry"
  end
end