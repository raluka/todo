require_relative '../lib/task'

describe Task do
  it 'should be able to create a task' do
    task = Task.new("nume")
    expect(task).to be_truthy
  end

  it 'should store description for a task' do
    task = Task.new("q")
    result = task.body('text')
    expect(result).to eq 'text'
  end

  it 'should create a new task with default status' do
    task = Task.new("task")
    expect(task.status).to eq("CREATED")
  end

  it 'should create a new task with custom status' do
    task = Task.new("task", "INPROGRES")
    expect(task.status).to eq("INPROGRES")
  end

  it 'should have created_at and updated_at attributes' do
    task = Task.new("task")
    expect(task.created_at).to be_truthy
    expect(task.updated_at).to be_truthy
  end

end