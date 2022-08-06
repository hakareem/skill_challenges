require "track"


RSpec.describe Track do
  context "initializes the class" do
  it "returns the title of a track" do
  track = Track.new("Sixty Low", "Don")
  expect(track.title).to eq "Sixty Low" 
  end
  end

  it "returns the artist and title in the right format" do
  track = Track.new("Sixty Low", "Don")
  expect(track.format).to eq "Sixty Low by Don" 
  end
end