require "uppercase"


RSpec.describe "uppercase method" do
 it "given an empty string, it returns an empty array" do
  result = uppercase("")
  expect(result).to eq []
 end

 it "given a string with no uppercased words, it returns an empty array" do
  result = uppercase("AbLe")
  expect(result).to eq []
 end

 it "given a string with one uppercased words, it returns that word in an array" do
  result = uppercase("hello WORLD")
  expect(result).to eq ["WORLD"]
 end

  it "given a string with multiple uppercased words, it returns those words in an array" do
  result = uppercase("HELLO WORLD")
  expect(result).to eq ["HELLO", "WORLD"]
 end

  it "ignores non alphabetic characters " do
  result = uppercase("HELLO WORLD!")
  expect(result).to eq ["HELLO", "WORLD"]
 end
end