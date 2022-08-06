
class MusicTracker

 def initialize
  @tracks = []
 end

 def add(track)
  if track.empty?
   fail "Please enter a track"
  else
   @tracks << track
  end
 end

 def list
  @tracks
 end

end