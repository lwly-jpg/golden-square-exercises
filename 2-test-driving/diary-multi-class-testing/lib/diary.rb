class Diary
  def initialize
    @diary_entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @diary_entries << entry
  end

  def all
    return @diary_entries
  end

  def count_words
    return @diary_entries.sum(&:count_words)
  end

  def reading_time(wpm)
    fail 'Error: reading time must be greater than 0.' if wpm <= 0
    return (count_words / wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    return readable_entries(wpm, minutes).max_by(&:count_words)
  end

  private 

  def readable_entries(wpm, minutes)
    return @diary_entries.filter do |entry|
      entry.reading_time(wpm) <= minutes
    end
  end

end