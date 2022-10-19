require 'counter.rb'

RSpec.describe Counter do
  it "counts to 5 when passed 5" do
    counter = Counter.new
    counter.add(5)
    result = counter.report()
    expect(result).to eq "Counted to 5 so far."
  end

  it "counts to 10 when passed 10" do
    counter = Counter.new
    counter.add(10)
    result = counter.report()
    expect(result).to eq "Counted to 10 so far."
  end

  it "counts to 20 when passed 20" do
    counter = Counter.new
    counter.add(20)
    result = counter.report()
    expect(result).to eq "Counted to 20 so far."
  end
end