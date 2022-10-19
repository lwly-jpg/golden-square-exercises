require 'todo_list'

describe TodoList do
  context 'when no tasks have been added' do
    it 'returns empty list' do
      my_list = TodoList.new
      expect(my_list.incomplete).to eq []
    end
  end

end
