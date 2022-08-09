# TodoOraganizer Class Design Recipe

1. Describe the Problem

```

   As a user so that I can keep track of my tasks, I want a program that I can add todo tasks to and see a list of them.

   As a user so that I can focus on tasks to complete, I want to mark tasks as complete and have them disappear from the list.

```

2. Design the Method Signature

---

```ruby

class TodoOrangizer

def initialize
 @todo_container = []
end

def add(todo) #todo is a string
 # adds todo task
end

def list
 # returns list of todo tasks
end

def complete(todo)
 # deletes todo from the list
 # updates the list
end

end

```

3. Create Examples as Tests

```ruby
# EXAMPLE

todo_tasks = TodoOrganizer.new

# listing without adding a todo
todo_taks.list # []

# adding todos
todo_tasks.add("Go for a run")
todo_tasks.list # "Go for a run"

# adding an empty string as a todo
todo_tasks.add("") # fails

# adding multiple todos
todo_tasks.add("football")
todo_tasks.add("basketball")
todo_tasks.list # "football", "basketball"

# completing todos
todo_tasks.add("football")
todo_tasks.add("basketball")
todo_tasks.complete("football")
todo_tasks.complete("basketball")
todo_tasks.list # returns empty list

# completing half of todos
todo_tasks.add("football")
todo_tasks.add("basketball")
todo_tasks.complete("football")
todo_tasks.list # returns "basketball"

# completing nonexistent todos
todo_tasks.complete("run") # fails

```

4. Implement the Behaviour

```

   Follow the test-driving process of red, green, refactor to implement the behaviour.


```
