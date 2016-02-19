# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
def find_mult
  lcm = 1

  (2..20).each do |i|
    lcm *= i / gcd(lcm, i)
  end

  lcm
end

def gcd(a, b)
  while b > 0
    a %= b
    return b if a == 0
    b %= a
  end

  a
end

puts find_multiple
