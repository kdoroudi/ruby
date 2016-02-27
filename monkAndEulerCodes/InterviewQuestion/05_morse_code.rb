def morse_encode(str)
  sentence = str.split(" ")
  mor_sent = ""
  for i in 0..(sentence.length - 1)
    mor_sent << (morse_encode_word(sentence[i]) + " ")
  end
  mor_sent
end

def morse_encode_word(word)
  morse_encode_char =
  {
    "A"	=> ".- " ,
    "B"	=> "-... " ,
    "C"	=> "-.-. " ,
    "D"	=> "-.. " ,
    "E"	=> ". " ,
    "F"	=> "..-. " ,
    "G"	=> "--. " ,
    "H"	=> ".... " ,
    "I"	=> ".. " ,
    "J"	=> ".--- " ,
    "K"	=> "-.- " ,
    "L"	=> ".-.. " ,
    "M"	=> "-- " ,
    "N"	=> "-. " ,
    "O"	=>	"--- " ,
    "P"	=>	".--. " ,
    "Q"	=>	"--.- " ,
    "R"	=>	".-. " ,
    "S"	=>	"... " ,
    "T"	=>	"- " ,
    "U"	=>	"..- " ,
    "V"	=>	"...- " ,
    "W"	=>	".-- " ,
    "X"	=>	"-..- " ,
    "Y"	=>	"-.-- " ,
    "Z"	=>	"--.. "
  }
  m_word = ""
  translate = word.upcase
  for i in 0..(translate.length - 1)
    m_word << morse_encode_char["#{translate[i]}"]
  end
  m_word
end


puts morse_encode " congradulations this code is written in morse code "
