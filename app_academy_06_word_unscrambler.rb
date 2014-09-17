# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.

def word_unscrambler(str, words)
# To facilitate comparision with each word in array, break up str into an array of letters and sort
	sorted_str_letters = str.split("").sort
	anagram_words = []
# For the words array, iterate over each word and compare with the sorted_str_letters
# if the word matches, push to the anagram_words array
	words.each do |word|
		anagram_words << word if word.split("").sort == sorted_str_letters
	end

# return anagram_words
	anagram_words
end
