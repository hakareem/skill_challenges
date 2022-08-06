require "music_library"


# Unit Testing Music_library

RSpec.describe MusicLibrary do
 context "start of the program" do
  it "returns an empty list" do
   library = MusicLibrary.new
   expect(library.all).to eq []
  end
 end
end