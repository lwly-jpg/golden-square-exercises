require 'todo'

describe Todo do
  context 'when no task has been added' do
    it 'returns nil' do
      my_task = Todo.new("")
      expect(my_task.task).to eq ""
    end

    it 'raises error if attempt to mark done' do
      my_task = Todo.new("")
      expect{my_task.mark_done!}.to raise_error 'Error: No task added.'
    end

    it 'raises error if asked to mark done' do
      my_task = Todo.new("")
      expect{my_task.done?}.to raise_error 'Error: No task added.'
    end

  end

  context 'when task has been added' do
    it 'returns task' do
      my_task = Todo.new("Clean the flat")
      expect(my_task.task).to eq "Clean the flat"
    end

    it 'returns true if task is marked done' do
      my_task = Todo.new("Clean the flat")
      my_task.mark_done!
      expect(my_task.done?).to eq true
    end

    it 'returns false if task is not marked done' do
      my_task = Todo.new("Clean the flat")
      expect(my_task.done?).to eq false
    end

    it 'raises error if marked done is already done' do
      my_task = Todo.new("Clean the flat")
      my_task.mark_done!
      expect{my_task.mark_done!}.to raise_error 'Error: Task already done.'
    end
  end

end