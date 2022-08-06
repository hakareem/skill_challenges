require "music_tracker"

RSpec.describe MusicTracker do
 context "initializes the music tracker" do
  it "returns an empty list" do
   track = MusicTracker.new
   result = track.list
   expect(result).to eq []
  end
 end

 context "given an empty input" do
  it "fails" do
  track = MusicTracker.new
   expect{track.add("")}.to raise_error "Please enter a track"
  end
 end

 it "adds a track to the list" do
  track = MusicTracker.new
  track.add("Sky")
  track.add("High")
  expect(track.list).to eq ["Sky", "High"]
 end
end