class MusicLibrary
  def initialize
    @songlist = []
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
  @songlist << track
  end

  def all
    # Returns a list of track objects
    @songlist
  end

  def search(keyword) # keyword is a string
    # Returns a list of tracks that match the keyword
    # Uses matches? from Track

    return @songlist.select do |track|
      track.matches?(keyword)
    end


  end

end

