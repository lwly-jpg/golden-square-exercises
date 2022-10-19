class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @counter_index = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return @contents.split(" ").length
  end

  def reading_time(wpm)
    fail 'Error: reading time must be greater than 0.' if wpm <= 0
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    reading_session = wpm * minutes
    text_in_session = @contents.split.slice!(@counter_index, reading_session).join(" ")
    @counter_index += reading_session
    if @counter_index >= @contents.split(" ").length
      @counter_index = 0
    end
    return text_in_session
  end
end