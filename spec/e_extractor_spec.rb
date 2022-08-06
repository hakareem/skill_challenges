require "e_extractor"


RSpec.describe "e_extractor method" do
 it "returns the string if it has no E's" do
  result = e_extractor("kiwi")
  expect(result).to eq "kiwi"
 end

  it "given an empty string it returns nothing" do
  result = e_extractor("")
  expect(result).to eq ""
 end

  it "given a string with a single e, it returns the e at the start of the string" do
  result = e_extractor("hide")
  expect(result).to eq "ehid"
 end

  it "given a string with a multiple e's, it returns the all the e's at the start of the string" do
  result = e_extractor("hideeee")
  expect(result).to eq "eeeehid"
 end
end