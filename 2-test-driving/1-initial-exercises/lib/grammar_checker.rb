def grammar_checker(text)
  characters = text.chars
  if characters[0] == characters[0].upcase
    if characters[-1].match(/[!.?]/)
      "Grammar check passed: text starts with capital, ends with suitable sentence-ending punctuation mark."
    else
      "Grammar fail: text starts with capital, but does not end with suitable sentence-ending punctuation mark."
    end
  elsif characters[0] != characters[0].upcase
    if characters[-1].match(/[!.?]/)
      "Grammar fail: text does not start with capital, but ends with suitable sentence-ending punctuation mark."
    else
      "Grammar fail: text does not start with capital and does not end with suitable sentence-ending punctuation mark."
    end
  end
end