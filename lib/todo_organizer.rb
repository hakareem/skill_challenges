class TodoOrganizer

def initialize
  @todo_container = []
end

def add(todo) #todo is a string
  if !(todo.is_a? String) || todo.empty?
    fail "No text was given"
  else 
    @todo_container << todo
  end

end

def list
  return @todo_container
end

def complete(todo)
  fail "todo doesn't exist" unless @todo_container.include?(todo)
  @todo_container.delete(todo)
  end
end