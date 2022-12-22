# require the gem in Ruby code
require 'morse_code'

def decode_morse(message)
  # Split the message into words
  words = message.split('   ')

  # Initialize empty result string
  result = ''

  # Loop through the words and decode them one by one
  words.each do |word|
    # Split word into letters
    letters = word.split

    # Decode letters one by one and append them to the result string
    letters.each do |letter|
      decoded_message = MorseCode::Converter.new(letter)
      result += decoded_message.convert
    end

    # Append a space to the result string to separate the words
    result += ' '
  end

  # Return the result string
  puts result
end

# You can then call the method to decode a Morse code message
# decode_morse(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
