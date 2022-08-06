require "diary_entry" 


RSpec.describe DiaryEntry do
  context "User has access to the entries" do
    it "returns the entry" do
    entry = DiaryEntry.new("A", "test test test test")
    result = entry.entry_contents
    expect(result).to eq "test test test test"
    end

    it "returns the entry name" do
    entry = DiaryEntry.new("A", "About to test")
    result = entry.entry_name
    expect(result).to eq "A"
    end
  end

  context "Counts the number of words in an entry" do
    it "returns the number of words in an entry" do
      entry = DiaryEntry.new("A", "Ran so far into")
      result = entry.entry_length
      expect(result).to eq 4
    end
  end
end