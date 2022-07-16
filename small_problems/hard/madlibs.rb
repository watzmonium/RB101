NOUNS = ['milk', 'poop', 'pee', 'potty', 'bouncy ball', 'meepo', 'school', 'bell']
ADJECTIVES = ['brown', 'smelly', 'stinky', 'gross', 'cool', 'small', 'yucky', 'special']
ADVERBS = ['quickly', 'happily', 'proudly', 'exictedly', 'madly', 'angrily', 'sadly', 'fearlessly']
VERBS = ['ran', 'jumped', 'hid', 'threw', 'pooped', 'kicked', 'pinched', 'butt danced']

text = File.open('madlibs2.txt')

text.each do |line|
  puts format(line, noun: NOUNS.sample, adjective: ADJECTIVES.sample, adverb: ADVERBS.sample, verb: VERBS.sample)
end