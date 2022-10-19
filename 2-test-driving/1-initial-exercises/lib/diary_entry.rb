class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @counter_index = 0
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    @contents.split.length
  end

  def reading_time(wpm)
    count_words / wpm
  end

  def reading_chunk(wpm, minutes)
    reading_session = wpm * minutes
    text_in_session = @contents.split.slice!(@counter_index, reading_session).join(" ")
    @counter_index += reading_session
    return text_in_session


    # divide string up based on wpm and minutes
    # return first half of string
    # return next part of string
    
    # `wpm` is an integer representing the number
    # of words the user can read per minute
    # `minutes` is an integer representing the
    # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end