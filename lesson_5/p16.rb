# write a method that returns an UUID when called with no paramters
RANDCHAR = ('a'..'f').to_a + ('0'..'9').to_a
LEN = RANDCHAR.length

def uuid
  8.times do
    print RANDCHAR[rand(LEN)]
  end
  print '-'
  3.times do
    4.times do
      print RANDCHAR[rand(LEN)]
    end
    print '-'
  end
  12.times do
    print RANDCHAR[rand(LEN)]
  end
  puts ''
end

uuid

def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end