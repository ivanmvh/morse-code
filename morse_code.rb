# hash
MORSE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0'
}

def decode_char(char)
  (MORSE[char])
end

print decode_char(".-")
print decode_char("-----")
print ("\n")

def decode_word (word_in_morse)
    word_arr = []
    word_in_morse.split.each {
      |ele|
      word_arr.push(decode_char(ele))
    }
    return word_arr.join
end    
    
p decode_word('-- -.-- -----') 

def decode (message)
  arr_msg = []
  message.split("   ").each {
    |word|
    # array of words ex: ["MY", "NAME", "IS"]
    arr_msg.push(decode_word(word))
  }
  p arr_msg
  arr_msg.join(" ")
end  

p decode("-- -.--   -. .- -- .   .. ...")
