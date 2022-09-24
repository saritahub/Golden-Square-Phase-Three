require '/Users/saritaradia/Desktop/Projects/Golden-Square-Phase-Three/lib/01_Diary/01_diary.rb'
require '/Users/saritaradia/Desktop/Projects/Golden-Square-Phase-Three/lib/01_Diary/01_diary_entry.rb'
RSpec.describe "integration" do
  it "counts the words in all entries" do
    diary = Diary.new
    diary.add(DiaryEntry.new("title1", "one two"))
    diary.add(DiaryEntry.new("title2", "three four five"))
    expect(diary.count_words).to eq 5
  end
end