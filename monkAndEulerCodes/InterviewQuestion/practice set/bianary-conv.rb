def convertor(num)
  # TODO: you can assume `num` is already an integer, unless this
  # function is intended to accept strings (not likely).
  number = num.to_i
  binary = ''
  if number == 0
    return 0
  end

  # TODO: add comment about why/how this works
  while 0 < number
    if number % 2 == 0
      number = number / 2
      binary << "0"
    else
      number = number  / 2
      binary << "1"
    end
  end
  return binary.reverse
end

puts(convertor(156))
puts(convertor(1))
puts(convertor(0))
puts(convertor(128))
