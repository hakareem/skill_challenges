# File: lib/music_library.rb


class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
    @tracks << track
  end

  def all
    return @tracks
  end
  
  def search_by_title(keyword) # keyword is a string
    return @tracks.select {|x| x.title.include?(keyword)}
  end
end