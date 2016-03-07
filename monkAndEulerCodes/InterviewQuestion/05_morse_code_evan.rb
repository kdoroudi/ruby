#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# Constants
#-------------------------------------------------------------------------------

MORSE_CODE_MAP = {
  'A' => '.-',
  'B' => '-...',
  'C' => '-.-.',
  'D' => '-..',
  'E' => '.',
  'F' => '..-.',
  'G' => '--.',
  'H' => '....',
  'I' => '..',
  'J' => '.---',
  'K' => '-.-',
  'L' => '.-..',
  'M' => '--',
  'N' => '-.',
  'O' => '---',
  'P' => '.--.',
  'Q' => '--.-',
  'R' => '.-.',
  'S' => '...',
  'T' => '-',
  'U' => '..-',
  'V' => '...-',
  'W' => '.--',
  'X' => '-..-',
  'Y' => '-.--',
  'Z' => '--..',
}

#-------------------------------------------------------------------------------
# Long way
#-------------------------------------------------------------------------------

def morse_encode_long(str)
  encoded_words = []
  str.upcase.split(" ").each do |word|
    encoded_words << morse_encode_word_long(word)
  end
  encoded_words.join('  ')
end

def morse_encode_word_long(word)
  result = []
  letters = word.split('')
  letters.each do |l|
    result << MORSE_CODE_MAP[l]
  end
  result.join(' ')
end

#-------------------------------------------------------------------------------
# Short way
#-------------------------------------------------------------------------------

def morse_encode_short(str)
  str.upcase.split(" ").map { |w| morse_encode_word_short(w) }.join('  ')
end

def morse_encode_word_short(word)
  word.split('').map { |l| MORSE_CODE_MAP[l] }.join(' ')
end

def morse_encode(str)
  morse_encode_short(str)
end

#-------------------------------------------------------------------------------
# Main
#-------------------------------------------------------------------------------

puts morse_encode_long  "congratulations this code is written in morse code"
puts morse_encode_short "congratulations this code is written in morse code"
