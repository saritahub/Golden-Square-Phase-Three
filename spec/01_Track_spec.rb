require '/Users/saritaradia/Desktop/Projects/Golden-Square-Phase-Three/lib/01_Music/01_Track.rb'

RSpec.describe "Track Unit" do
  it "returns true if keyword matches title or artist" do
    track = Track.new("Themesong", "FRIENDS")
    expect(track.matches?("FRIENDS")).to eq true
  end

  it "returns false if keyword does not match title or artist" do
    track = Track.new("Themesong", "FRIENDS")
    expect(track.matches?("Duck")).to eq false
  end

end