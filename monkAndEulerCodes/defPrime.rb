# prime number test
def primeIs x
  (2..x-1).each { |y| return false if x % y == 0 }
  true
end
