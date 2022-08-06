Uppercase Method Design Recipe

1. Describe the Problem
   As a user I want to retrive all the cased words from a given text.

2. Design the Method Signature

# EXAMPLE

---

```ruby

def uppercase(str)
return #the cased words from that string
end

```

3. Create Examples as Tests

```ruby
# EXAMPLE

extract_uppercase("hello WORLD") => ["WORLD"]
extract_uppercase("HELLO WORLD") => ["HELLO", "WORLD"]
extract_uppercase("hello world") => []
extract_uppercase("hello WoRLD") => []
extract_uppercase("hello WORLD!") => ["WORLD"]
extract_uppercase("") => []
extract_uppercase(nil) throws an error

```

4. Implement the Behaviour
   Follow the test-driving process of red, green, refactor to implement the behaviour.
