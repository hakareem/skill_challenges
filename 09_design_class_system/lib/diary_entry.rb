class DiaryEntry
 attr_reader :entry_name
 attr_reader :entry_contents
 
 def initialize(entry_name,entry_contents)
  fail "Please fill out the entries" if entry_name.empty? || entry_contents.empty?
  @entry_name = entry_name
  @entry_contents = entry_contents
 end

 def entry_length
  return @entry_contents.split.count
 end
end