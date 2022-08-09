# Grammer-check Method Design Recipe

1. Describe the Problem

```
   As a user so that I can improve my grammar, I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.
```

2. Design the Method Signature

---

```ruby

def grammer_check(text)
return #correct
end

```

3. Create Examples as Tests

```ruby
# EXAMPLE

# given an empty string
grammer_check("")  => # raises an error

# given a float / integer
grammer_check(1)  => # raises an error
grammer_check(1.3)  => # raises an error

# given a string with correct format
grammer_check("Hi, how are you?") => # returns correct

# given a string starting with a lower case
grammer_check("hi, how are you?") => # returns incorrect

# given a string which doesn't end with a puncation mark
grammer_check("Hi, how are you") => # returns incorrect

```

4. Implement the Behaviour

```

   Follow the test-driving process of red, green, refactor to implement the behaviour.


```
