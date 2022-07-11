def compute_switches(switches)
  switch_hash = {}
  1.upto(switches) do |iteration|
    1.upto(switches) do |switch_num|
      if switch_num % iteration == 0
        switch_hash[switch_num] = false if switch_hash[switch_num] == nil
        switch_hash[switch_num] = switch_hash[switch_num] == true ? false : true
      end
    end
  end

  switch_hash.each_with_object([]) { |(k, v), obj| obj << k if v == true }
end

p compute_switches(5) == [1, 4]
p compute_switches(10) == [1, 4, 9]


=begin
PROBLEM --------------------
1 to n light switches
each switch connected to one other light that is initially off
n number of times, switch the state of each switch divisible by n
return array of on switches

EXAMPLES -------------------
p compute_switches(5) == [1, 4]
p compute_switches(10) == [1, 4, 9]


DATA STRUCTURES ------------
a hash of n values with either true or false

ALGORITHM ------------------
create an empty hash
iterate from 1 to n var
iteratie from 1 to n
switch the value of all numbers divisible by ver

select all keys from the hash who have values of true and return that
=end