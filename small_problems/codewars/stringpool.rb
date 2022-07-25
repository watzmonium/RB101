NUM_ARR = ('0'..'9').to_a

def add_str(string)
  return string unless NUM_ARR.include?(string[0])
  temp_str = ''
  time = 1
  times_num = 1
  string[1..-1].size.times do
    (1 * string[0].to_i).times do
      temp_str << string[time]
    end
    time += 1
  end
  temp_str
end
    
def string_expansion(s)
  str_arr = []
  first_idx = 0
  last = s.size - 1
  ret_str = []
  
  s.chars.each_with_index do |char, idx|
    if NUM_ARR.include?(char)
      ret_str << add_str(s[first_idx..idx-1]) unless idx == 0
      first_idx = idx
    elsif idx == last
      ret_str << add_str(s[first_idx..-1])
    end
  end
  ret_str.compact.join('') 
end

=begin
p - given a string of mixed digits and strings, return a string of the
    letters printed the numbers times
    input - a string
    output - a string without thenumbers
    
a - split the string on numbers
    establish a string to add new substrings to
    iterate over the string array and add word[0].to_i times 1..-1 of the string
    return the string

=end