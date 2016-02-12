# this program take an integer n and returns the sum of all integers upto num
# (n-n)+(n-(n-1))+(n-(n-2))+....+(n)
def sum_num(n)
  result = 0
  i = 0

  while i <= n
    result += i
    i += 1
  end

  return result

  end

  puts("please enter the number that you want to know its integer sum")
  number = gets().to_i
  puts(sum_num(number))
