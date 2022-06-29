def joinor(ary, fword='or ')
  work_arr = ary.clone
  and_word = work_arr.pop.to_s
  str = work_arr.join(', ') + ', ' + fword + and_word
end

p joinor([1,2])