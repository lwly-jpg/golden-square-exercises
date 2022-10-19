require 'report_length'

RSpec.describe "report_length method" do
  it "returns 'This string was 5 characters long.' when passed 'seven'" do
    result = report_length("seven")
    expect(result).to eq "This string was 5 characters long."
  end

  it "returns 'This string was 3 characters long.' when passed 'one'" do
    result = report_length("one")
    expect(result).to eq "This string was 3 characters long."
  end

  it "returns 'This string was 2 characters long.' when passed 'no'" do
    result = report_length("no")
    expect(result).to eq "This string was 2 characters long."
  end

end