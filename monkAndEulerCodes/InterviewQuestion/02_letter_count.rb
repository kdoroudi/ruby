# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
<<<<<<< HEAD
=======

#this one return the count for all the alphabets in the english language and returns it in an array
>>>>>>> feb 24 submition
def letter_count1(str)
  counts = [["a",0],["b",0],["c",0],["d",0],["e",0],["f",0],["g",0],["h",0],["i",0],["j",0],["k",0],["l",0],["m",0],["n",0],["o",0],["p",0],["q",0],["r",0],["s",0],["t",0],["u",0],["v",0],["w",0],["x",0],["x",0],["y",0],["z",0]]
  l = str.length - 1
  for i in 0..l
    for j in 0..25
      if srt[i] == counts[j][0]
        counts[j][1] += 1
      end
    end
  end
  counts
end



def letter_count(str)
  counts = Hash.new(0)

  str.each_char do |i|
    counts[i] += 1 unless i == " "
  end
  counts
end
