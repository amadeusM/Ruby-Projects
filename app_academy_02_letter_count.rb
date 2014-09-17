# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.

def letter_count(str)
    frequencies = {}
	letters = str.split('')
	letters.each do |letter|
        frequencies[letter] = letters.count(letter)
	end
	frequencies.delete(" ")
	frequencies
end
