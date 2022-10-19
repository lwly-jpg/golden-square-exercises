class TodoList
  def initialize
    @incomplete_task_list = []
    @complete_task_list = []
  end

  def add(todo)
    @incomplete_task_list << todo
  end

  def incomplete
    return @incomplete_task_list = @incomplete_task_list.filter { |entry| !entry.done? }
  end

  def complete
    return @complete_task_list = @incomplete_task_list.filter { |entry| entry.done? }
  end

  def give_up!
    fail "No tasks exist. Add at least one task." if @incomplete_task_list.count == 0
    @incomplete_task_list.each do |entry|
      entry.mark_done!
    end
  end
end