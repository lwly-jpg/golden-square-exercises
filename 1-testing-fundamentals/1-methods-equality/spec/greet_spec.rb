require 'greet'

RSpec.describe "greet method" do
  it "returns 'Hello, Fred!' when passed Fred" do
    result = greet("Fred")
    expect(result). to eq "Hello, Fred!"
  end 
end