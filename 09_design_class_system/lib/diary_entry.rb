class DiaryEntry
 attr_reader :entry_name
 attr_reader :entry_contents
 
 def initialize(entry_name,entry_contents)
  @entry_name = entry_name
  @entry_contents = entry_contents
 end

 def entry_length
  return @entry_contents.split.count
 end
end