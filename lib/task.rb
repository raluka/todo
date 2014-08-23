class Task

  attr_accessor :name, :status
  attr_reader :created_at, :updated_at

  def initialize(name, status = "CREATED")
    @name = name
    @status = status
    @created_at = Time.now
    @updated_at = Time.now
  end

  def body(text)
    @text = text
  end


end

