class GrammarStats
  def initialize
    @total_tested = 0
    @total_correct = 0
  end

  def check(text) # text is a string
    if text[0] == text[0].upcase && text[-1].match(/[.!?]/)
      @total_tested += 1
      @total_correct += 1
      return true
    else
      @total_tested += 1
      return false
    end
  end

  def percentage_good
    "#{(@total_correct.to_f / @total_tested.to_f * 100).to_i}%"
  end
end


