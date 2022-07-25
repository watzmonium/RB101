def letter_case_count(string)

  string.chars.each_with_object(Hash.new(0)) do |let, hsh|
    if let.match('[a-z]')
      hsh[:lowercase] += 1 
    elsif let.match('[A-Z]')
      hsh[:uppercase] += 1
    else
      hsh[:neither] += 1
    end
  end

end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') #== { lowercase: 0, uppercase: 0, neither: 0 }