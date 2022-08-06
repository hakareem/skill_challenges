# File: lib/todo_list.rb
class TodoList
  def initialize
    @todos = []
  end

  def add(todo) # todo is an instance of Todo
    @todos << todo
  end

  def incomplete
    return @todos.select {|task| task.done? == false}
  end

  def complete
    return @todos.select {|task| task.done? == true}
  end

  def give_up!
    fail "no tasks added" if @todos.empty?
    @todos.each(&:mark_done!)  # Marks all todos as complete
  end
end
