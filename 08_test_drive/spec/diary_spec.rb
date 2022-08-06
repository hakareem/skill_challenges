require "diary"


RSpec.describe Diary do
context "there is no entries" do
 it "returns an empty list" do
  diary = Diary.new
  expect(diary.all).to eq []
 end

 it "returns 0 for count_words" do
  diary = Diary.new
  expect(diary.count_words).to eq 0
 end
end

describe "#reading_time" do
 context "when wpm is negative" do
  it "fails" do
   diary = Diary.new
   expect{diary.reading_time(0)}.to raise_error "Reading speed needs to be greater than 0"
  end
 end
end

describe "#find_best_entry_for_reading_time" do
 context "when wpm is negative" do
  it "fails" do
   diary = Diary.new
   expect {diary.find_best_entry_for_reading_time(0,0)}.to raise_error "Reading speed and time need to be greater than 0"
   end
  end
 end
end