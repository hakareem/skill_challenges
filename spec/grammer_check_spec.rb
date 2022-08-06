require "grammer_check"


RSpec.describe "grammer_check method" do
  context "given an empty string as an argument" do
    it "returns an error" do
    expect{grammer_check(4)}.to raise_error "error"
  end
  end

  context "given a string, it checks if that string starts with a capital letter and ends with the correct punctation" do
    it "returns correct" do
    result = grammer_check("Hello, are you okay?")
    expect(result).to eq "correct"
  end
  end

end