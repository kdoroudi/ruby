#Sum of Even Fibonacci numbers up to variable max
def even_fib_sum(number)
  fib_num = [0,1]
  first = 0
  second = 1
  max = number
  even_sum = 2
  while fib_num[first]+fib_num[second] < max
    fib_num << fib_num[first]+fib_num[second]
    if (fib_num[first]+fib_num[second])%2 == 0
      even_sum = even_sum + (fib_num[first]+fib_num[second])
      first += 1
      second += 1
    else
      first += 1
      second += 1
    end
  end
puts "The Fibonacci sequence is: #{fib_num}"
puts "The sum of all the even terms is: #{even_sum}"
end
print "This program generates the terms in the Fibonacci sequence whose values do not exceed the upper bound value which is set by the user and finds the sum of the even-valued terms in the sequence.\nPress ENTER to continue . . ."
gets
puts "What would you like your upper bound to be?"
num = gets().to_i
puts even_fib_sum(num)
