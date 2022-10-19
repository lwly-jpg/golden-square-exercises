class Diary
  def initialize
    @thought_entries = []
    @todo_list = []
    @mobile_numbers = []
  end

  def add_thought(thought)
    @thought_entries << thought
  end

  def add_task(task)
    @todo_list << task
  end

  def show_thoughts
    @thought_entries
  end

  def show_list
    @todo_list
  end

  def available_to_read(wpm, minutes)
    @thought_entries.filter do |entry|
      entry.reading_time(wpm) <= minutes
    end
  end

  def add_numbers
    @mobile_numbers = @thought_entries.map {|x| x.thought.scan(/\d{11}/).join(" ")}.reject(&:empty?)
  end

  def show_numbers
    @mobile_numbers
  end
end