Task_tracker Method Design Recipe

1. Describe the Problem
   As a user, so that I can keep track of my tasks, I want to check if a text includes the string #TODO.

2. Design the Method Signature

---

```ruby

def task_tracker(task)
return #true if a string is included in task
end

```

3. Create Examples as Tests

```ruby

# EXAMPLE

task_tracker("#todo") => #returns true
task_tracker("#TODO running") => #returns true
task_tracker("go swimming") => #returns false
task_tracker("") => #returns error
task_tracker(1) or (1.0) => #returns error


```

4. Implement the Behaviour
   Follow the test-driving process of red, green, refactor to implement the behaviour.
