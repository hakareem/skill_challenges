require "make_snippet"


RSpec.describe "make_snippet method" do
 it "given an empty string it returns an empty string" do
  result = make_snippet("")
  expect(result).to eq ""
 end

 it "given a string with less than 6 characters it returns that string" do
  result = make_snippet("able to run there")
  expect(result).to eq "able to run there"
 end

  it "given a string with more than 5 characters it returns that string and ..." do
  result = make_snippet("yes finished line has been reached")
  expect(result).to eq "yes finished line has been reached..."
 end
end