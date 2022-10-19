def get_most_common_letter(text)
  counter = Hash.new(0)
  text.gsub(/[^0-9a-z]/i, '').chars.each do |char|
    counter[char] += 1
  end
    p counter.to_a
    counter.to_a.max_by { |k, v| v }[0][0]
end

p get_most_common_letter("the roof, the roof, the roof is on fire!")

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"