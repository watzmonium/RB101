# def cleanup(str)
#   str.gsub(/[^\w]/, ' ').squeeze(' ')
# end

# p cleanup("---what's my +*& line?") == ' what s my line '

def word_sizes(str)
  str.split(' ').each_with_object(Hash.new(0)) do |word, hsh|
    hsh[word.delete('^A-Za-z').size] += 1
  end
end

p word_sizes('Four score and seven.')# == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}