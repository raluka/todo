require_relative '../lib/todo'

describe Todo do

  it 'should be able to create a new todo_list' do
    todo = Todo.new("fuu")
    expect(todo.create_new_todo).to be_a Array
  end

  it 'is mandatory to create a new empty todo_list with name' do
    todo = Todo.new("My Amazing List")
    expect(todo.name).to eq "My Amazing List"
  end

  it 'should create a new todo list with fixed size' do
    todo = Todo.new("nume", 5)
    expect(todo.create_new_todo.size).to eq 5
  end

  it 'should have a default size when no value is provided' do
    todo = Todo.new('list')
    expect(todo.create_new_todo.size).to eq 10
  end

end