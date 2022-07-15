WORDS = {
  nouns: ['bouncy ball', 'poop', 'diarrhea', 'pillow'],
  verbs: ['skip', 'somersault', 'hop', 'butt dance'],
  adjectives: ['bad', 'smelly', 'funny', 'farty', 'stinky', 'dirty', 'yucky', 'gross'],
  adverbs: ['sadly', 'happily', 'angrily', 'joyfully', 'fearfully']
}

libs_text = File.open('madlibs.txt')

libs_text.each do |sentence|
  puts format( sentence, adjective: WORDS[:adjectives].sample,
  verb: WORDS[:verbs].sample,
  noun: WORDS[:nouns].sample,
  adverb: WORDS[:adverbs].sample
  )
end