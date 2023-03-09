MORSE_CODE = {
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
}.freeze

def decode_char(char)
  (MORSE_CODE[char])
end

print("1-#{decode_char('.-')}") # A
print("\n")
print "2-#{decode_char('-----')}" # 0
print("\n")

def decode_word(word_in_morse)
  word_arr = []
  word_in_morse.split.each do |ele|
    word_arr.push(decode_char(ele))
  end
  word_arr.join
end

p "3-#{decode_word('-- -.-- -----')}"
# "MY0"

def decode(message)
  arr_msg = []
  message.split('   ').each do |word|
    # array of words ex: ["MY", "NAME", "IS"]
    arr_msg.push(decode_word(word))
  end
  arr_msg.join(' ')
end

p "4-#{decode('-- -.--   -. .- -- .   .. ...')}"
# "MY NAME IS"
p "5-#{decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')}"
# "A BOX FULL OF RUBIES"
