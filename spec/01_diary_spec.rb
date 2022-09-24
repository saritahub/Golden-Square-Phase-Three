require '/Users/saritaradia/Desktop/Projects/Golden-Square-Phase-Three/lib/01_Diary/01_diary.rb'
RSpec.describe Diary do
  it "counts the words in all entries" do
    diary = Diary.new
    fake_DiaryEntry_1 = double :fake_two_word_diary_entry, count_words: 2
    fake_DiaryEntry_2 = double :fake_three_word_diary_entry, count_words: 3
    diary.add(fake_DiaryEntry_1)
    diary.add(fake_DiaryEntry_2)
    expect(diary.count_words).to eq 5
  end

  it "adds and lists diary entries" do
    diary = Diary.new
    fake_DiaryEntry_1 = double :fake_diary_entry
    fake_DiaryEntry_2 = double :fake_diary_entry
    diary.add(fake_DiaryEntry_1)
    diary.add(fake_DiaryEntry_2)
    expect(diary.entries).to eq [fake_DiaryEntry_1, fake_DiaryEntry_2]
  end
end

# class FakeDiaryEntry  #Double version = double :fake_diary_entry
# end


# class FakeTwoWordDiaryEntry   #Double version = double :fake_two_word_diary_entry, count_words: 2
#   def count_words #Uses count_words method
#     return 2 #Explicit return, no logic for doubles
#   end
# end

# class FakeThreeWordDiaryEntry    #Double version = double :fake_three_word_diary_entry, count_words: 3
#   def count_words #Uses count_words method
#     return 3 #Explicit return, no logic for doubles
#   end
# end