def _is_off_by_one(a, b)
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
        if _is_off_by_one(str,word) 
            match << word
        end
    end
    return match
end
