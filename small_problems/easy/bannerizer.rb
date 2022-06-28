#solution 2
# oops i think the tex is supposed to go in one big box.
PLUS_PRINT = '+-'
UP_PRINT = '| '
MAX_LENGTH = 76

def line_printer(style, line_char=' ', lengths=0, sentence='')
  print style
  while lengths > 0
    print line_char
    lengths -= 1
  end
  print sentence
  print style.reverse
  puts ''
end

def block_printer(in_string, inlength)
  line_printer(PLUS_PRINT, PLUS_PRINT[1], inlength)
  line_printer(UP_PRINT, UP_PRINT[1],inlength)
  line_printer(UP_PRINT, '', 0, in_string)
  line_printer(UP_PRINT, UP_PRINT[1], inlength)
  line_printer(PLUS_PRINT, PLUS_PRINT[1], inlength)
end

def print_in_box(in_string)
  inlength = in_string.length

  while inlength > MAX_LENGTH do
    block_printer(in_string[0..(MAX_LENGTH - 1)], MAX_LENGTH)
    in_string.delete_prefix!(in_string[0..(MAX_LENGTH - 1)])
    inlength -= MAX_LENGTH
  end

  block_printer(in_string, inlength)
end

print_in_box("To boldy go where no one has gone before except of cours when i'm eating a big old bag" \
              "of poopy boopies adkpaodakdowapdkadkawdpawkwakdakawkpakwdoawkawdawdkawdaowdawkdpwkodawakdpaw")


=begin
PROBLEM --------------------
input is a string
output is the same string but in a 'box'
the box has 1 padding dash on either side of the string, each preceeded by a plus sign
then the box is 3 vertical lines tall, and the text goes on the middle line



EXAMPLES -------------------
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
DATA STRUCTURES ------------
+- constant that can be called as reverse
| constant


ALGORITHM ------------------
there should be a function to print the top lines
  inputs are  the style, and the 'line' char, length of string default 0, 
  and a string default ''
  print the string, print strlen chars, print the +- array backwards



=end