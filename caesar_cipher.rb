def caesar_cipher(string, factor)
	alphabet = [[*'A'..'Z'], [*'a'..'z']]
	string.tr(alphabet.flatten.join, alphabet.flat_map { |x| x.rotate(factor) }.join)
end


p caesar_cipher("To be or not to be, That is the question", 3)
