class Diary
  def initialize
    @entries = []
    @tasks = []
    @contacts = []
  end

  def add_entry(entry)
    @entries << entry
  end

  def all_entries 
    arr = []
    @entries.each {|item| arr.push(item.entry_name + " : " + item.entry_contents)}
    return arr
  end

  def add_contact(contact)
    @contacts << contact
  end

  def all_contacts
    arr = []
    @contacts.each {|item| arr.push(item.name + " : " + item.number)}
    return arr
  end

  def add_task(task)
    @tasks << task
  end

  def all_tasks
    arr = []
    @tasks.each {|item| arr.push(item.task)}
    return arr
  end

  def complete_tasks
    arr = []
    @tasks.each do |item|
    if item.status == true
      arr.push(item.task) 
    end
    end
    return arr
  end

  def incomplete_tasks
    arr = []
    @tasks.each do |item|
    if item.status == false
      arr.push(item.task) 
    end
    end
    return arr
  end

  def longest_entry_read(wpm, minutes)
    max_read = wpm * minutes
    readable_entries = @entries.select {|item| item.entry_length <= max_read}

    fail "You are unable to read right now" if readable_entries == []

    longest_entry = readable_entries.sort_by {|item| item.entry_length}.last
    return "You can read an entry from #{longest_entry.entry_name}"
  end
end