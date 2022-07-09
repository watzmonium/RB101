LOWER = ('a'..'z').to_a
UPPER = ('A'..'Z').to_a

def letter_case_count(in_string)
  count_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  in_string.each_char do |char|
    if LOWER.include?(char)
      count_hash[:lowercase] += 1
    elsif UPPER.include?(char)
      count_hash[:uppercase] += 1
    else
      count_hash[:neither] += 1
    end
  end
  count_hash
end

def letter_case_count2(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

=begin
PROBLEM --------------------
input is a string
output is a  hash w/ 3 entries (keys)
1) number of lowercase chars in string
2) number of uppercase chars in string
3) number of non of those things



EXAMPLES -------------------
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }



DATA STRUCTURES ------------




ALGORITHM ------------------





=end