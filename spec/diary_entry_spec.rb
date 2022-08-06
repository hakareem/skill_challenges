require "diary_entry"

RSpec.describe DiaryEntry do
  it "constructs" do
  diary_entry = DiaryEntry.new("title", "contents")
  expect(diary_entry.title).to eq "title"
  expect(diary_entry.contents).to eq "contents"
  end

  describe "#count_words" do
  it "returns the number of words in the contents" do
    diary_entry = DiaryEntry.new("title","a b c")
    expect(diary_entry.count_words).to eq 3
  end

  it "returns zero when there are no words in contents" do
    diary_entry = DiaryEntry.new("title","")
    expect(diary_entry.count_words).to eq 0
  end
  end

  describe "#reading_time" do
  context "given a wpm of 200" do 
  it "returns the number of minutes it takes a user to read" do
    diary_entry = DiaryEntry.new("title","a " * 400)
    expect(diary_entry.reading_time(200)).to eq 2
    end
  end

  context "given a wpm of 0" do 
  it "fails" do
    diary_entry = DiaryEntry.new("title","a b c")
    expect{diary_entry.reading_time(0)}.to raise_error "Reading speed needs to be greater than 0"
    end
  end
end

  describe "#reading_chunk" do
    context "contents read within time" do 
    it "returns contents user can read in given minutes" do
    diary_entry = DiaryEntry.new("title","we ran far enough")
    result = diary_entry.reading_chunk(200,1)
    expect(result).to eq "we ran far enough"
    end
  end

  context "contents not read within time" do 
    it "returns the readable chunk" do
    diary_entry = DiaryEntry.new("title","we ran far enough")
    result = diary_entry.reading_chunk(2,1)
    expect(result).to eq "we ran"
    end

    it "returns the next chunk" do
    diary_entry = DiaryEntry.new("title","we ran far enough")
    diary_entry.reading_chunk(2,1)
    result = diary_entry.reading_chunk(2,1)
    expect(result).to eq "far enough"
          end
  end
  end

end