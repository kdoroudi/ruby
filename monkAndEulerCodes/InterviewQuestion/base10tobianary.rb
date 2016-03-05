#write a function that counts total number of 1's in a binary format of a number, ex 3->0011 -> 2 ones

def int_to_binary(x)
  p = 0
  two_p = 0
  output = ""

  while two_p * 2 <= x do
    two_p = 2 ** p
    output << ((two_p & x == two_p) ? "1" : "0")
    p += 1
  end

  output.reverse
end

int_to_binary(1).count("1")
int_to_binary(156).count("1")
int_to_binary(111).count("1")
int_to_binary(234).count("1")
int_to_binary(0x).count("1")
