# Reading_time Method Design Recipe

1. Describe the Problem

```

   As a user so that I can manage my time, I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

```

2. Design the Method Signature

---

```ruby

def reading_time(text)
return #estimation of time it takes the user to read
end

```

3. Create Examples as Tests

```ruby
# EXAMPLE

reading_time("less than 1 minute") => # returns less than 1 minute
reading_time("1 minute") => #returns about 1 minute
reading_time("over 1 minute") => #returns the calculation

```

4. Implement the Behaviour

```

   Follow the test-driving process of red, green, refactor to implement the behaviour.


```
