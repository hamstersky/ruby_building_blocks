def caesar_cipher(string, key)
  ciphered_string = ''
  string.each_char do |c|
    # if non-word character such as punctuation push it to ciphered_string
    # and skip to next character
    if c =~ /\W/
      ciphered_string << c
      next
    end
    key.times { c.next! } 
    # when it wraps from z to a it becomes something like: 'aa', 'ab', etc.
    # this cuts the first 'a' after wrapping
    c[0] = '' if c.length > 1
    ciphered_string << c
  end
  ciphered_string
end

p caesar_cipher("To be or not to be, That is the question", 3)