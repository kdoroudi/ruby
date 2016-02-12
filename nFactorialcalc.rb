require "./gcd.rb"
def factorial(n)
  if n <0
    return nil # since 0 factorial is zero
  end
  result = 1
  while n > 0
    result = result *n
    n -= 1
  end

  return result
end

#puts("type in a the number that you want to calculate its factorial")
#number = gets().to_i
#puts(factorial(number))

puts(factorial(numb))
