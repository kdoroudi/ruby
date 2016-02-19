# what are the prime factors of a number
def squareroot(number)
  x_n = 2

  while (x_n * x_n) < number
    x_n += 1
  end
  $check = x_n
end

factors = []
prime_factors = []
for i in 2..$check
  if (number % i == 0)
    factors << i
    num = num / i
    i += 1
  else
    i += 1
  end
end
# a number is prime if and only if its divisible by only 1 and it self
