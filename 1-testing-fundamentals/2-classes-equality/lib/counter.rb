# frozen_string_literal: false

# File: lib/counter.rb
class Counter
  attr_reader :count

  def initialize
    @count = 0
  end

  def add(num)
    @count += num
  end

  def report
    "Counted to #{@count} so far."
  end
end
