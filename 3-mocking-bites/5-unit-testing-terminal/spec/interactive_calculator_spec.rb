require 'interactive_calculator'

describe InteractiveCalculator do
  it 'returns result of a number subtracted from another number' do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(terminal).to receive(:puts).with("Please enter a number.").ordered
    expect(terminal).to receive(:gets).and_return("5").ordered
    expect(terminal).to receive(:puts).with("Please enter another number.").ordered
    expect(terminal).to receive(:gets).and_return("3").ordered
    expect(terminal).to receive(:puts).with("Here is your result:").ordered
    expect(terminal).to receive(:puts).with("5 - 3 = 2").ordered

    calculation = InteractiveCalculator.new(terminal)
    calculation.run
  end
end

