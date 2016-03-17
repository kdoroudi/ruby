# Write a method that takes an integer `n` in; it should return
# n*(n-1)*(n-2)*...*2*1. Assume n >= 0.
#
# As a special case, `factorial(0) == 1`.

def factorial(n)
  if n < 0
    return nil
  elsif n == 0
    return 1
  else
    value = 1
    while n > 0
      value = value * n
      n -= 1
    end
    return value
  end
end


def factorial_recursive(n)
  return 1 if n == 0
  return nil if n < 0
  return n * factorial_recursive(n-1)
end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'factorial(0) == 1: ' + (factorial(0) == 1).to_s
)
puts(
  'factorial(1) == 1: ' + (factorial(1) == 1).to_s
)
puts(
  'factorial(2) == 2: ' + (factorial(2) == 2).to_s
)
puts (factorial(2))
puts(
  'factorial(3) == 6: ' + (factorial(3) == 6).to_s
)
puts(
  'factorial(4) == 24: ' + (factorial(4) == 24).to_s
)
