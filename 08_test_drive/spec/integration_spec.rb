require "diary_entry"
require "diary"


RSpec.describe "integration" do
 it "returns a list of all entries" do
  diary = Diary.new
  ent1 = DiaryEntry.new("ti1","con1")
  ent2 = DiaryEntry.new("ti2","con2")
  diary.add(ent1)
  diary.add(ent2)
  expect(diary.all).to eq [ent1,ent2]
 end

 it "returns the number of words for all entries" do
  diary = Diary.new
  ent1 = DiaryEntry.new("ti1","con1 " * 50)
  ent2 = DiaryEntry.new("ti2","con2 " * 50)
  diary.add(ent1)
  diary.add(ent2)
  expect(diary.count_words).to eq 100
 end

  it "returns the reading time for a given wpm" do
  diary = Diary.new
  ent1 = DiaryEntry.new("ti1","con1 " * 50)
  ent2 = DiaryEntry.new("ti2","con2 " * 50)
  diary.add(ent1)
  diary.add(ent2)
  expect(diary.reading_time(10)).to eq 10
 end

  it "returns the best entry for reading time" do
  diary = Diary.new
  ent1 = DiaryEntry.new("ti1","con1 " * 100)
  ent2 = DiaryEntry.new("ti2","con2 " * 200)
  diary.add(ent1)
  diary.add(ent2)
  best_entry = diary.find_best_entry_for_reading_time(50,3)
  expect(best_entry).to eq ent1
 end

 context "given entries not readable within the timeframe" do
 it "returns the best entry for reading time" do
  diary = Diary.new
  ent1 = DiaryEntry.new("ti1","con1 " * 200)
  ent2 = DiaryEntry.new("ti2","con2 " * 300)
  diary.add(ent1)
  diary.add(ent2)
  expect{diary.find_best_entry_for_reading_time(50,3)}.to raise_error "Entries not readable given the timeframe"
 end
end
end