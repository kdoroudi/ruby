# check if number is positive or negative
def check_sign(number)
  if number == 0
    number
  elsif number > 0
    "#{number} is positive"
  else
    "#{number} is negative"
  end
end

puts("please enter a non zero number")
num = gets().to_i
puts(check_sign(num))
