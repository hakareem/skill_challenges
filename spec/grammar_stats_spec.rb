require "grammar_stats"


RSpec.describe GrammarStats do
  describe "#check" do
  context "text starts with a capital letter and ends with a punctuation mark" do
  it "passes" do
    grammar = GrammarStats.new
    result = grammar.check("Hi, how are you?")
    expect(result).to eq true
  end
  end
  
  context "text doesn't start with a capital letter" do
  it "fails" do
    grammar = GrammarStats.new
    result = grammar.check("hi, how are you?")
    expect(result).to eq false
  end
  end

  context "text doesn't end with a punctuation mark" do
  it "fails" do
    grammar = GrammarStats.new
    result = grammar.check("Hi, how are you")
    expect(result).to eq false
  end
  end

  it "checks for an empty text" do
    gs = GrammarStats.new
    result = gs.check("")
    expect(result).to eq false
  end
  end

  describe "#percentage-good" do
  it "checks for an empty text" do
  gs = GrammarStats.new
  gs.check("We ran far enough!")
  gs.check("We ran far enough!")
  gs.check("We ran far enough!")
  expect(gs.percentage_good).to eq 100
  end
  end
end