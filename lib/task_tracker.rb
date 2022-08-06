
def task_tracker(string = nil)
 fail "error" if string.nil? || string.is_a?(Integer) || string.is_a?(Float) || string.empty?
 return string.upcase.include?("#TODO") ? true : false
end