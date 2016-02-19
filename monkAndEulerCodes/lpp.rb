#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.
max = 0

999.downto(100) do |i|
  i.downto(100) do |j|
    result = i * j
    max = result if result > max && result.to_s == result.to_s.reverse
    break if result <= max
  end
end

puts max
