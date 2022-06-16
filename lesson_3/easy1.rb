advice = "Few things in life are as important as house training your pet dinosaur."

adv_arr = advice.split

adv_arr.map! { |x| x == 'important' ? 'urgent' : x }

advice = adv_arr.join(' ')
puts advice

# advice.gsub!('important, 'urgent')