def convertor(num)
  number = num.to_i
  bianary = ''
  if number == 0
    return 0
  end

  while 0 < number
    if number % 2 == 0
      number = number / 2
      bianary << "0"
    else
      number = number  / 2
      bianary << "1"
    end

  end
   return bianary.reverse
end

puts(convertor(156))
puts(convertor(1))
puts(convertor(0))
puts(convertor(128))
