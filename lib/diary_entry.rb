class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @furthest_point = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return @contents.split(" ").size
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
    fail "Reading speed needs to be greater than 0" unless wpm.positive?
    return (count_words / wpm.to_f).floor
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    words_read = wpm * minutes
    start_from = @furthest_point
    end_at = @furthest_point + words_read
    arr_of_words = @contents.split(" ")
    word_list = arr_of_words[start_from,end_at]
    
    if end_at >= count_words
    @furthest_point = 0
    else 
    @furthest_point = end_at
    end
    return word_list.join(" ")
  end
end