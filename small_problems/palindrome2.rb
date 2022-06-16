def real_palindrome?(string)
  stringar = string.upcase.split(//)
  stringar.map! { |x| x if x.ord > 64 && x.ord < 91 }
  stringar.keep_if {|x| x != nil}
  stringar == stringar.reverse
end

p real_palindrome?("123ab321")