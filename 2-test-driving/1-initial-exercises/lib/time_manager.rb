def time_manager(text)
  words_per_min = 200
  words_per_sec = words_per_min / 60
  words = text.gsub(/[[:punct:]]/, "").split(" ")
  reading_time_total = (words.length / words_per_sec)
  reading_time_mins = (reading_time_total / 60) % 60
  reading_time_seconds = reading_time_total % 60
  return "#{reading_time_mins} mins : #{reading_time_seconds} secs"
end