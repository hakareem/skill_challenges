# File: lib/diary.rb
class Diary
  def initialize
    @entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @entries << entry
  end

  def all
    return @entries
  end

  def count_words
    return @entries.sum(&:count_words)
  end

  def reading_time(wpm) # wpm is an integer representing
    fail "Reading speed needs to be greater than 0" unless wpm.positive?
    return (count_words / wpm.to_f).floor
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    fail "Reading speed and time need to be greater than 0" unless wpm.positive? && minutes.positive?

    words_read = wpm * minutes
    best_entry = @entries.find{|x| x.count_words <= words_read}

    fail "Entries not readable given the timeframe" unless best_entry

    return best_entry
  end
end
