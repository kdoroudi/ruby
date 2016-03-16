def convertor(num)
  number = num.to_i
  bianary = ''
  while 2 < number
    if number % 2 == 0
      number = number / 2
      bianary << 0
    else
      number = (number - 1) / 2
      bianary << 1
    end

  end
   puts bianary
end

convertor(10)
