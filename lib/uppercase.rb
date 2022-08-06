
def uppercase(str)
 arr_of_words = str.split(" ")
 list_of_cased_words = arr_of_words.select {|x| x == x.upcase}
return list_of_cased_words.map do |word|
 word.gsub(/[^A-Z]/,"")
 end
end