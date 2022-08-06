
def reading_time(text)
 words_per_min = 200
 words_in_text = text.split(" ").size
 minute = (words_in_text / words_per_min).floor

 if minute < 1
  return "Less than 1 minute"
 elsif minute == 1
  return "About 1 minute"
 else 
  return "About #{minute} minutes"
 end
end