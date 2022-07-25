def f(s)
  sub_arry = []
  str_size = s.length
  
  0.upto(str_size - 1) do |num|
    num.upto(str_size - 1) do |idx|
      sub_arry << s[num..idx]
    end
  end
  sub_arry.uniq!
  
  max_arr = ['', 0]
  
  sub_arry.each do |word|
    1.upto(str_size / word.size) do |multi|
      if word * multi == s 
        if multi > max_arr[1]
          max_arr[0] = word
          max_arr[1] = multi
        elsif multi == max_arr[1] && max_arr[0].size < word.size
          max_arr[0] = word
          max_arr[1] = multi
        end
      end
    end
  end
  max_arr
            
end


def f2(str)
  (1..str.size).each do |substr_size|
    substr = str[0, substr_size]
    repetitions = str.size / substr_size
    
    return [substr, repetitions] if substr * repetitions == str
  end
end
=begin
p 
input - a string
output - an arry of a substring and its occurances

if the substrings all occur the same, the largest should be returned

a

store string length
1) find all substrings
    make an arry
    from 0-length
    for each index, from idx- length store that string
    
declare a max array of ['', 0]
2) test each substring for how many times it occurs, and store that if
    the number is > equal to previous && the sub size is larger
      - sub array each 
          find the sub length
          1 upto string length / sub length
            store the number if that number * sub == string
          if that number > array[1]
            store the number and sub
          if it's == && the length is longer
            store that number and sub
            
    return that
            
=end