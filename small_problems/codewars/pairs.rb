def pairs(arr)
  return 0 if arr.size < 2
  sum = 0
  arr.uniq.each do |num|
    sum += arr.count(num) / 2
  end
  sum
end



=begin
PROBLEM --------------------
input - array of ints
output - a single int (of counting pairs)

return 0 if the ary is empty or only has 1 value

a pair in this problem is
EXAMPLES -------------------
[1, 2, 5, 6, 5, 2]  -->  2 the pairs are 2s and 5s
[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4 the apirs are 2s, 20s, and 2s
DATA STRUCTURES ------------




ALGORITHM ------------------
option 1) make a hash, tally all numbers, and then return the sum of the values / 2
option 2) iterate over each unique value in the hash, count the values in 
          the og hash, sum the quotients / 2

1) for each unique value in the hash, count the occurences in the original hash, and divide that number by 2
   add that number to a running total

   return that total



=end