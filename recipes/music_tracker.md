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

# adds a track to the list
track.add("") # => fails if given input is empty

# list returnd all tracks
track.list # => EMPTY ARRAY

# adding a single track
track.add("a")
trak.list # "a"

# adding multiple tracks then listing
track.add("Going Up")
track.add("Going down")
track.list # => "Going up", "Going down"

```

4. Implement the Behaviour

```

   Follow the test-driving process of red, green, refactor to implement the behaviour.


```
