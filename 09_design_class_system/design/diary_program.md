# Diary Program Multi Class Design Recipe

1. Describe the Problem

```

   As a user so that I can record my experiences
   I want to keep a regular diary

   As a user
   So that I can reflect on my experiences
   I want to read my past diary entries

   As a user
   So that I can reflect on my experiences in my busy day
   I want to select diary entries to read based on how much time I have and my reading speed

   As a user
   So that I can keep track of my tasks
   I want to keep a todo list along with my diary

   As a user
   So that I can keep track of my contacts
   I want to see a list of all of the mobile phone numbers in all my diary entries

```

2. Design the Program Structure

---

```ruby

class Task
 def initialize(task)
 end

 def mark_complete # marks task as complete
 end

 def complete? # returns true if a task is complete otherwise it fails
 end
end

---

class Contact
 def initialize(name,number)
 end

 def valid?(number) # returns true if number length is 11 and starts with 0
 end
end

---

class DiaryEntry
 def initialize(entry_name,entry)
 end

 def entry_length # returns length of entry
 end
end

---

class Diary

 def initialize # initialized with empty lists
   # Entries
   # Contacts
   # Tasks
 end

 def add_entry(entry) # adds an entry to the list of entries
 end

 def all_entries # retrieves all available entries
 end

 def add_task(task) # adds an entry to the list of tasks
 end

 def all_tasks # retrieves all available tasks
 end

 def add_contact(contact) # adds an entry to the list of contacts
 end

 def all_contacts # retrieves all available contacts
 end

 def complete_tasks # returns list of complete tasks
 end

 def incomplete_tasks # returns list of incomplete tasks
 end

 def longest_entry_read(wpm, minutes) # returns longest entry a user can read
 end
end

```

3. Create Examples as Tests

```ruby
# EXAMPLE

 # DiaryEntry Class - Unit Testing
  entry = DiaryEntry.new("A", "one two")
  entry.entry_name # returns "A"
  entry.entry # returns "one two"
  entry.entry_length # 2

   # # Given empty entries
  entry = DiaryEntry.new("", "1 2 3 4") # fails
  entry = DiaryEntry.new("A", "") # fails
  entry = DiaryEntry.new("", "") # fails

---

 # Contact Class - Unit Testing
  contact = Contact.new("H", "07126742783")
  contact.name # "H"
  contact.number # "07126742783"

  ## Fail Cases: Given a number which is not 11 digits long or a number that doesn't start with 0
  contact_test = Contact.new("H","071234567") # number has to have a length of 11
  contact_test = Contact.new("H","77123456789") # number has to start with 0

---

 # Task Class - Unit Testing
  task = Task.new("run")
  task.mark_complete
  expect(task.complete?) # true

  ## Fail Case:
  task_test = Task.new("jump")
  expect{task_test.complete?} # fails becuase task isn't complete

---

  # Multi Class - Integration Testing
   diary = Diary.new
   contact = Contact.new("A", "07123456789")
   diary.add_contact(contact)
   expect(diary.all_contacts) # returns  "A - 07123456789"

   # # returns all available tasks
   diary = Diary.new
   task = Task.new("Run First")
   diary.add_task(task)
   expect(diary.all_tasks) # "Run First"

   # # returns all available entries
   diary = Diary.new
   entry = DiaryEntry.new("A", "1 2 3 4 5")
   diary.add_entry(entry)
   expect(diary.all_entries)# returns "A - 1 2 3 4 5"

   # # returns longest entry that can be read
   diary_test = Diary.new
   entry_test1 = DiaryEntry.new("A", "1 2 3 4 5")
   entry_test2 = DiaryEntry.new("B", "1 2 3 4 5 6")
   entry_test3 = DiaryEntry.new("C", "1 2 3")
   diary.add_entry(entry_test1)
   diary.add_entry(entry_test2)
   diary.add_entry(entry_test3)
   expect(diary_test.longest_entry_read(2,3)) # B

   # # returns completed tasks
   diary = Diary.new
   task1 = Task.new("Go")
   task2 = Task.new("Walk")
   task3 = Task.new("Come")
   diary.add_task(task1)
   diary.add_task(task2)
   diary.add_task(task3)
   task2.mark_complete
   expect(diary.complete_tasks) # "Walk"

   # # returns incompleted tasks
   diary = Diary.new
   task1 = Task.new("Run")
   task2 = Task.new("Joy")
   task3 = Task.new("Stop")
   diary.add_task(task1)
   diary.add_task(task2)
   diary.add_task(task3)
   task2.mark_complete
   expect(diary.incomplete_tasks) # "Run, Stop"

```

4. Implement the Behaviour

```

   Follow the test-driving process of red, green, refactor to implement the behaviour.


```
