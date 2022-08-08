# MusicTracker Class Design Recipe

1. Describe the Problem

```
   As a user so that I can keep track of my music listening, I want to add tracks I've listened to and see a list of them.
```

2. Design the Method Signature

---

```ruby

class MusicTracker

def initialize
 @tracks = []
end

def add(track) #track is a string
 # adds a track
end

def list
 # returns list of tracks
end

end

```

3. Create Examples as Tests

```ruby

# EXAMPLE

track = MusicTracker.new
track.list # => [] EMPTY ARRAY

track.add("") # => fails if given input is empty

track.add("Going Up")
track.list # => ["Going up"]

```

4. Implement the Behaviour

```

   Follow the test-driving process of red, green, refactor to implement the behaviour.


```
