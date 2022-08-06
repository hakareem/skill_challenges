require "reading_time"

RSpec.describe "reading_time method" do
  context "given text is less than 1 minute" do
  it "returns less than 1 minute" do
    result = reading_time("I'm reading super fast")
    expect(result).to eq ("Less than 1 minute")
  end
  end

  context "given text is about 1 minute" do
  it "returns about 1 minute" do
   one_min_text = "Orange " * 202
    result = reading_time(one_min_text)
    expect(result).to eq ("About 1 minute")
  end
  end

  context "given text is longer than 1 minute" do
  it "returns about 'time' minutes" do
    one_min_text = "Orange " * 404
    result = reading_time(one_min_text)
    expect(result).to eq ("About 2 minutes")
  end
  end

end