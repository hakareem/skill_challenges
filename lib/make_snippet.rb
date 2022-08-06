
def make_snippet(str)
 arr_of_words = str.split(" ")
 if arr_of_words.length <= 5
 return str
 else
  words = arr_of_words[0,6].join(" ")
  return words + "..."
 end
end