require "count_words"

RSpec.describe "count_words method" do
 it "given an empty string it returns 0" do
  result = count_words("")
  expect(result).to eq 0
 end

  it "given a string it returns the number of words" do
  result = count_words("apple out in here")
  expect(result).to eq 4
 end
 
end
 