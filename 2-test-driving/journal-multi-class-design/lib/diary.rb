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
    @mobile_numbers = @thought_entries.flat_map {|x| x.thought.scan(/07[0-9]{9}/)}
  end

  def show_numbers
    @mobile_numbers
  end
end