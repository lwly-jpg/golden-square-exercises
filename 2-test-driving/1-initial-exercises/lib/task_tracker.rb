def task_tracker(text)
  words = text.scan(/[#TODO]*/)
  if words.include?("#TODO") 
    return "This is a task"
  else
    "This is not a task"
  end
end