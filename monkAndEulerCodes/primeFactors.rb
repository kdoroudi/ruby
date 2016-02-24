# what are the prime factors of a number
def primeIs x
  (2..x-1).each { |y| return false if x % y == 0 }
  true
end

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
for n in 1..factors.length
  if primeIs(factors(n)) == true
    prime_factors << factors(n)
    n +=1
  else
    n +=1
  end
end
