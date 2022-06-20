
def determine_missing_letter(in_array)
  char_array = ('A'..'Z').to_a + ('a'..'z').to_a

  char_array.each_with_index do | letter, idx |
    if letter == in_array[0]
      in_array.length.times do |x|
        return char_array[idx + x] if in_array[x] != char_array[idx + x]
      end
    end
  end
end

p determine_missing_letter(['a','b','c','d','f']) # e 
p determine_missing_letter(['O','Q','R','S']) #'P'
p determine_missing_letter(["a","b","c","d","f"]) # "e"
p determine_missing_letter(["O","Q","R","S"])# "P"

=begin
I have interviewed five software engineering candidates over the past two weeks, 
including folks with grad degrees in computer science/ex-FAANG with 7+ years of 
experience. All five were jointly rejected by myself and a co-interviewer 
either because the candidates jumped straight into implementation and ended 
up with bugs during testing or unhandled edge cases, and/or their oral-written 
communication was poor.

So, for those folks who are 'PEDACing' for the first few times:
1) Train your problem solving muscles to start with PEDAC by default 
(or some equivalent thereof);
2) Get comfortable talking through problems out loud, not just typing silently.

Can't stress enough that PEDAC isn't an arbitrary heuristic meant for 
getting through the curriculum or 109/129 oral assessments. PEDAC works, 
especially under pressure.

- Sam Swire (Check)
=end