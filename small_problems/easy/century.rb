def century(year)
  year -= 1 if year % 100 == 0
  cen_num = (year / 100) + 1
  cen_num = cen_num.to_s
  suf = %w(st nd rd th)
  if cen_num.end_with?('1')
    puts cen_num + suf[0]
  elsif cen_num.end_with?('2')
    puts cen_num + suf[1]
  elsif cen_num.end_with?('3')
    puts cen_num + suf[2]
  else
    puts cen_num + suf[3]
  end
end

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'