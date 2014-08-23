class Todo

  attr_accessor :name, :size

  def initialize(name, size = DEFAULT_VALUE)
    @name = name
    @size = size
  end

  def create_new_todo
    Array.new(size)
  end


  private
  DEFAULT_VALUE = 10
end