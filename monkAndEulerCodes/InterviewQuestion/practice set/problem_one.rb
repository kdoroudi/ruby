# problem one
def ordered_word?(str)
  for i in 0..(str.length - 2)
    if !(str[i] <= str[i+1])
      return false
    end
  end
  return true
end
