#gcd
def gcd1(x, y)

  while y > 0
    x, y = y, x % y
  end
  x
end


#or

def gcd2(a, b)
  while b > 0
    a %= b
    return b if a == 0
    b %= a
  end
  a
end

#or

x.gcd(o) 
