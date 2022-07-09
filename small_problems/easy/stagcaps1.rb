def staggered_case(string, downc=false, symbskip=false)
  new_str = ''
  0.upto(string.length - 1) do |char|
    if string[char] =~ /[A-Za-z]/
      if downc
        new_str << string[char].downcase
      else
        new_str << string[char].upcase
      end
      downc = !downc
    else
      new_str << string[char]
      downc = !downc if symbskip
    end
  end
  new_str
end

def staggered_case2(string)
  count = 0
  string.chars.map do |x|
    if x =~ /[a-z]/i
      count += 1
      count.odd? ? x.upcase : x.downcase
    else
      x 
    end 
  end.join
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers', false, true)
