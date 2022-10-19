require 'todo_list'
require 'todo'

describe 'integration' do
  context 'when no entries have been added' do
    it 'returns empty todo list' do
      my_list = TodoList.new
      expect(my_list.incomplete).to eq []
      expect(my_list.complete).to eq []
    end

    it 'raises error when give up is called' do
      my_list = TodoList.new
      expect {my_list.give_up!}.to raise_error "No tasks exist. Add at least one task."
    end
  end

  context 'when at least one entry has been added' do
    it 'returns list of incomplete entries' do
      my_list = TodoList.new
      first_todo = Todo.new("Clean the flat")
      second_todo = Todo.new("Wash the dishes")
      my_list.add(first_todo)
      my_list.add(second_todo)
      expect(my_list.incomplete).to eq [first_todo, second_todo]
    end

      context 'when an entry is marked complete' do
        it 'returns list of completed tasks' do
          my_list = TodoList.new
          first_todo = Todo.new("Clean the flat")
          second_todo = Todo.new("Wash the dishes")
          my_list.add(first_todo)
          my_list.add(second_todo)
          first_todo.mark_done!
          expect(my_list.complete).to eq [first_todo]
        end
    
        it 'returns list of incomplete tasks' do
          my_list = TodoList.new
          first_todo = Todo.new("Clean the flat")
          second_todo = Todo.new("Wash the dishes")
          my_list.add(first_todo)
          my_list.add(second_todo)
          first_todo.mark_done!
          expect(my_list.incomplete).to eq [second_todo]
        end
      end

      context 'when give_up is called' do
        it 'marks all tasks as complete' do
          my_list = TodoList.new
          first_todo = Todo.new("Clean the flat")
          second_todo = Todo.new("Wash the dishes")
          my_list.add(first_todo)
          my_list.add(second_todo)
          my_list.give_up!
          expect(my_list.complete).to eq [first_todo, second_todo]
          expect(my_list.incomplete).to eq []
        end
      end
  end


 

  # context 'when no entries marked complete' do
  # end

  # context 'when some or all entries have been marked complete' do
  # end

end