require '/Users/saritaradia/Desktop/Projects/Golden-Square-Phase-Three/lib/01_Music/01_MusicLibrary.rb'
require '/Users/saritaradia/Desktop/Projects/Golden-Square-Phase-Three/lib/01_Music/01_Track.rb'

RSpec.describe "Music Track Integration" do
  it "adds and lists tracks" do
    music = MusicLibrary.new
    track_1 = Track.new("title one", "artist one")
    track_2 = Track.new("title two", "artist two")
    music.add(track_1)
    music.add(track_2)
    expect(music.all).to eq [track_1, track_2]
  end
end