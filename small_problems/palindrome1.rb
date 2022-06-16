def palindrome?(in_string)
  in_string == in_string.reverse
end

def palindrome2?(input)
  newput = input.split(//) rescue newput = input
  newput.flatten == newput.flatten.reverse
end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

p palindrome?(%w(m a d a m))
p palindrome2?('Madam')          # (case matters)
p palindrome2?("madam i'm adam")  # (all characters matter)
p palindrome2?('356653') 