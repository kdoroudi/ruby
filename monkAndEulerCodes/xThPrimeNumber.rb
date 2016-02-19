#What is the 10 001st prime number

x = 10001
n = 3
count = 1

# or use require"defPrime.rb"
def primeIs x
  (2..x-1).each { |y| return false if x % y == 0 }
  true
end

while true
  count += 1 if primeIs n
  break if count == x
  n += 2
end

puts "The answer is #{n}."
