def decode_char(str)
  result = {
    '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e', '..-.' => 'f', '--.' => 'g',
    '....' => 'h', '..' => 'i', '.---' => 'j', '-.-' => 'k', '.-..' => 'l', '--' => 'm', '-.' => 'n',
    '---' => 'o', '.--.' => 'p', '--.-' => 'q', '.-.' => 'r', '...' => 's', '-' => 't', '..-' => 'u',
    '...-' => 'v', '.--' => 'w', '-..-' => 'x',	'-.--' => 'y', '--..' => 'z'
  }
  result[str].upcase
end

def decode_word(word)
  morse = word.split(/ /)
  word = ''
  morse.each do |code|
    word = "#{word}#{decode_char(code)}"
  end
  word
end

def decode_message(msg_coded)
  morse = msg_coded.split(/ /)
  msg = ''
  morse.each do |word|
    msg = "#{msg} #{decode_word(word)}"
  end
  msg
end

puts decode_message('-- -.--  -. .- -- .')
puts decode_message('.. .-.. --- ...- . -.-- --- ..-')
puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
