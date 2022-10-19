def make_snippet(str)
  separate_words = str.split(" ")
  if separate_words.length > 5
    first_five_words = separate_words.slice(0, 5)
    "#{first_five_words.join(" ")} ..."
  else
    str
  end
end