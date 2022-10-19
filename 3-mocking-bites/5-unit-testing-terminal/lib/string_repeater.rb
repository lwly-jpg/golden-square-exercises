class StringRepeater

  def initialize(terminal)
    @terminal = terminal 
  end
  
  def run
    @terminal.puts "Hello. I will repeat a string many times."
    @terminal.puts "Please enter a string"
    string_input = @terminal.gets.chomp
    @terminal.puts "Please enter a number of repeats"
    repeats_input = @terminal.gets.chomp.to_i
    result = string_input * repeats_input
    @terminal.puts "Here is your result:"
    @terminal.puts result
  end
end

# String repeater output:
# string_repeater = StringRepeater.new
# string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX