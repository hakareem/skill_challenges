require "diary_entry"

RSpec.describe DiaryEntry do
 context "class need to be initialized correctly" do
  it "requires an input for title and contents" do
   expect {entry = DiaryEntry.new("", "")}.to raise_error "Enter a valid title and contents"
   expect {entry = DiaryEntry.new("A", "")}.to raise_error "Enter a valid title and contents"
   expect {entry = DiaryEntry.new("", "B")}.to raise_error "Enter a valid title and contents"
  end
 end

 describe "#title" do
  it "returns the title as a string" do
   entry = DiaryEntry.new("title","contents")
   result = entry.title
   expect(result).to eq "title"
  end
 end

  describe "#contents" do
  it "returns the contents as a string" do
   entry = DiaryEntry.new("title","contents")
   result = entry.contents
   expect(result).to eq "contents"
  end
 end


  describe "#count-words" do
  it "returns the number of words in the contents as an integer" do
   entry = DiaryEntry.new("title","hi")
   result = entry.count_words
   expect(result).to eq 1

   entry2 = DiaryEntry.new("title","hi " * 50)
   result = entry2.count_words
   expect(result).to eq 50
  end
 end

  describe "#reading-time" do
   context "given a postive wpm" do
   it "returns an integer representing an estimate of reading time for the contents at a given wpm" do
   entry = DiaryEntry.new("title","contents")
   result = entry.reading_time(1)
   expect(result).to eq 1

   entry2 = DiaryEntry.new("title","contents " * 100)
   result = entry2.reading_time(10)
   expect(result).to eq 10
  end
  end

  context "given a negative wpm" do
   it "fails" do
   entry = DiaryEntry.new("title","contents")
   expect{entry.reading_time(0)}.to raise_error "Reading speed needs to be greater than 0"
   end
  end
 end


  describe "#reading_chunk" do
   context "given a negative wpm or minutes" do
    it "fail" do
    entry = DiaryEntry.new("title","contents")
    expect { entry.reading_chunk(0,0)}.to raise_error "Enter a positive value for reading speed and time"
    entry = DiaryEntry.new("title","contents")
    expect { entry.reading_chunk(0,3)}.to raise_error "Enter a positive value for reading speed and time"
    entry = DiaryEntry.new("title","contents")
    expect { entry.reading_chunk(15,0)}.to raise_error "Enter a positive value for reading speed and time"
    end
  end

  context "given contents that can be read within the reading time" do
   it "returns the contents" do
    entry = DiaryEntry.new("title", "one two")
    result = entry.reading_chunk(2,1)
    expect(result).to eq "one two"
   end
  end

  context "given contents that can not be read within the reading time" do
   it "returns the first chunk of contents" do
    entry = DiaryEntry.new("title", "ran away again")
    result = entry.reading_chunk(1,2)
    expect(result).to eq "ran away"
   end

    it "returns the second chunk of contents" do
    entry = DiaryEntry.new("title", "ran away again")
    result1 = entry.reading_chunk(1,2)
    result2 = entry.reading_chunk(1,2)
    expect(result1).to eq "ran away"
    expect(result2).to eq "again"
   end

   it "returns the first chunk of contents after having completed a cycle" do
    entry = DiaryEntry.new("title", "ran away again")
    result1 = entry.reading_chunk(1,2)
    result2 = entry.reading_chunk(1,1)
    result3 = entry.reading_chunk(1,2)
    expect(result1).to eq "ran away"
    expect(result2).to eq "again"
    expect(result3).to eq "ran away"
   end
  end
 end
end