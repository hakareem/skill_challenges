require "music_library"
require "track"

# Integration Testing Music Library and Track


RSpec.describe "integration" do
 context "adding tracks to the music library" do
  it "returns list of tracks" do
   library = MusicLibrary.new
   track1 = Track.new("John Cena","You see")
   track2 = Track.new("George","Ran Away")
   library.add(track1)
   library.add(track2)
   expect(library.all).to eq [track1,track2]
  end
 end

 context "having added some tracks" do
  it "search for tracks by title" do
   library = MusicLibrary.new
   track1 = Track.new("Louder than ever","Mike")
   track2 = Track.new("Lane in all","Rake")
   library.add(track1)
   library.add(track2)
   result = library.search_by_title("Louder")
   expect(result).to eq [track1]
  end
 end

 context "searching for a title that doesn't exist" do
  it "returns an empty list" do
   library = MusicLibrary.new
   track1 = Track.new("Louder than ever","Mike")
   track2 = Track.new("Lane in all","Rake")
   library.add(track1)
   library.add(track2)
   result = library.search_by_title("wer")
   expect(result).to eq []
  end
 end

end