require '/Users/saritaradia/Desktop/Projects/Golden-Square-Phase-Three/lib/01_Music/01_MusicLibrary.rb'

RSpec.describe "Music Unit" do
  it "adds and lists tracks" do
    music = MusicLibrary.new
    fake_track_1 = double :fake_track
    fake_track_2 = double :fake_track
    fake_track_3 = double :fake_track
    music.add(fake_track_1)
    music.add(fake_track_2)
    music.add(fake_track_3)
    expect(music.all).to eq [fake_track_1, fake_track_2, fake_track_3]
  end



  it "searches tracks by title" do
    music = MusicLibrary.new
    fake_track_1 = double :fake_track
    expect(fake_track_1).to receive(:matches?).with("two").and_return(true)
    fake_track_2 = double :fake_track
    expect(fake_track_2).to receive(:matches?).with("two").and_return(false)
    music.add(fake_track_1)
    music.add(fake_track_2)
    expect(music.search("two")).to eq [fake_track_1]
  end

end