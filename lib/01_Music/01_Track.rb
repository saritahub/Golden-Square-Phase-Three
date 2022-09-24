class Track
  def initialize(title, artist)
    @title = title
    @artist = artist
  end
  def matches?(keyword)
    # Returns true if the keyword matches either the title or artist
    if keyword.include?(@title) || keyword.include?(@artist)
      true
    else
      false
    end
  end
end