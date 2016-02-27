# problem one
def ordered_word?(str)
  for i in 0..(str.length - 2)
    if !(str[i] <= str[i+1])
      return false
    end
  end
  return true
end
# problem two

def encrypt(str)
  pairs = []
  counter = 1
  for i in 0..(str.length-2)
    if str[i] == str[i+1]
      counter += 1
    else
      pairs << [str[i], counter]
      counter = 1
    end
  end
  pairs << [str[str.length - 1], counter]
  return pairs
end

# problem three

def _is_off_by_one(a, b) # this is a helper method
    return false if a.length != b.length
    off = 0
    for i in 0..(a.length - 1)
        if a[i] != b[i]
            off += 1
        end
        if off > 1
            return false
        end
    end
    return true
end

def one_off_words(str,words)
    match = []
    words.each do |word|
        if _is_off_by_one(str,word) # need to match off by one letter
            match << word
        end
    end
    return match
end
