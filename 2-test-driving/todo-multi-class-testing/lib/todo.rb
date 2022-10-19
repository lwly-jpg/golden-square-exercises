class Todo
  def initialize(task) 
    @task = task
  end

  def task
    return @task
  end

  def mark_done!
    fail "Error: No task added." if @task == ""
    fail "Error: Task already done." if @task.start_with?("DONE: ")
    @task = "DONE: " + @task 
  end

  def done?
    fail "Error: No task added." if @task == ""
    @task.start_with?("DONE: ") ? true : false
  end
end