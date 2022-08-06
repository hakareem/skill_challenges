def e_extractor(string)
  letters = string.chars
  e_letters = letters.select {|x| x == "e"}.join
  non_e_letters = letters.select {|x| x != "e"}.join
  return e_letters + non_e_letters
end 