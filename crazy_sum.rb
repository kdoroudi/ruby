
def crazy_sum(numbers)
  result = 0
  i = 0

    while i < numbers.length
      result += i*numbers[i]
      i += 1
    end

    result
  end
