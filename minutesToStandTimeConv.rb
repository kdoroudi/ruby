#this program takes the minutes and retures the hour:min vertion on the input

def time_conversion(min)

  hours = 0

  while min >= 60
    hours += 1
    min -= 60
  end

  if min < 10
    min_s = "0" + min.to_s
  else
    min_s = min.to_s
  end

  return hours.to_s + ":" + min_s


end

puts("please type in the number of minutes ")
time = gets().to_i
puts(time_conversion(time))
