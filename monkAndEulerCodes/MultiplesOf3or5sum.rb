#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below a number given by the user.
def multiples_of_3_or_5_sum(number)
  (1..number).select {|x| x % 3 == 0 || x % 5 == 0}.reduce(:+)
end
puts("this program finds the sum of all the multiples of 3 or 5 below a number given by you")
puts("please input the upperbound number")
num = gets().to_i
puts(multiples_of_3_or_5_sum(num-1))
