def word_cap(in_string)
  in_string.downcase.split.map(&:capitalize).join(' ')
end

def word_cap2(in_string)
  word_arr = in_string.downcase.split
  word_arr.each { |word| word[0] = word[0].upcase if word[0] =~ /[a-z]/ }.join(' ')
end

def word_cap3(in_string)
  new_string = in_string.dup.downcase
  new_string.length.times do |num|
    if num == 0
       new_string[num] = new_string[num].upcase if new_string[num] =~ /[a-z]/
    else
      new_string[num] = new_string[num].upcase if new_string[num] =~ /[a-z]/ && new_string[num-1] ==  ' ' 
    end
  end
  new_string
end


def word_cap4(string)
  string.split.map { |word| word[0].upcase + word[1..-1].downcase }.join(' ')
end

puts word_cap2('this is a "quoted" word')

=begin
PROBLEM --------------------
input - a string
output - a new string that has all words capitalized and others lowecased


EXAMPLES -------------------




DATA STRUCTURES ------------




ALGORITHM ------------------





=end