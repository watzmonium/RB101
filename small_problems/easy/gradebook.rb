def get_grade(s1, s2, s3)
  score = (s1 + s2 + s3) / 3
  case score
  when 0..59
    'F'
  when 60..69
    'D'
  when 70..79
    'C'
  when 80..89
    'B'
  else
    'A'
  end
end


def get_grade2(s1, s2, s3)
  result = (s1 + s2 + s3)/3

  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"