
def grammer_check(string)
 punctation = ["!", "?" , "."]

 fail "error" if string.nil? || string.is_a?(Integer)

 if string[0] == string[0].upcase && punctation.any?
  return "correct"
 end

end