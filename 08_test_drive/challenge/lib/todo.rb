# File: lib/todo.rb
class Todo
  def initialize(task) # task is a string
    fail "Enter a valid todo" if task.empty?
    @task = task    
    @status = "incomplete"
  end

  def task
    return @task
  end

  def mark_done!
    @status = "complete"
  end

  def done?
    return @status == "complete"
  end
end