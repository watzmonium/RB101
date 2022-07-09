madlibs = {
  'noun' => '',
  'verb' => '',
  'adverb' => '',
  'adjective' => ''
}

madlibs.each_key do |part|
  puts part.start_with?('a') ? "Enter an #{part}: " : "Enter a #{part}: "
  madlibs[part] = gets.chomp
end

puts "Do you #{madlibs['verb']} your #{madlibs['adjective']} #{madlibs['noun']} #{madlibs['adverb']}? That's hilarious!"
=begin
#jAT
word_types = %w(noun verb adjective adverb)
words = {}

for type in word_types
  puts type.start_with?('a') ? %(Enter an #{type}:) : %(Enter a #{type}:)

  words[type] = gets.chomp
end

puts %(The #{words['adjective']} #{words['noun']} will #{words['verb']} you very #{words['adverb']}.)
=end
=begin
PROBLEM --------------------
Create a simple mad-lib program that prompts for a noun, a verb, 
an adverb, and an adjective and injects those into a story that you create.
input - each part of speech
output - sentence filled with  stuff

EXAMPLES -------------------
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

DATA STRUCTURES ------------
hash to store each part of speech

ALGORITHM ------------------
for each part of speech in the hash, ask the user to populate it with a string
print out the formatted string with the values from each key in the sentence



=end