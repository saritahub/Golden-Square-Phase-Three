require '/Users/saritaradia/Desktop/Projects/Golden-Square-Phase-Three/lib/01_Diary/01_diary_entry.rb'

RSpec.describe "DiaryEntry" do
  it "constructs" do
    diary_entry = DiaryEntry.new("title1", "one two")
    expect(diary_entry.title).to eq "title1"
    expect(diary_entry.contents).to eq "one two"
  end

  it "counts words in the contents" do
    diary_entry = DiaryEntry.new("title", "one two")
    expect(diary_entry.count_words).to eq 2
  end
end