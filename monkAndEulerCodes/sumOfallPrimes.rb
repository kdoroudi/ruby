#Find the sum of all the primes below x.

x = 2000000

def primeIs x
  (2..x-1).each { |y| return false if x % y == 0 }
  true
end

def primes upto
  a = []
  (2..upto).each { |i| a << i if primeIs i ; puts i }
  a
end

a.reduce(:+)
