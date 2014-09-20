# # Topics
#
# * modules
# * strings
#
# # Pig Latin
#
# Pig Latin is a made-up children's language that's intended to be
# confusing. It obeys a few simple rules (below) but when it's spoken
# quickly it's really difficult for non-children (and non-native
# speakers) to understand.
#
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to
# the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end
# of the word, and then add an "ay" sound to the end of the word.
#
# (There are a few more rules for edge cases, and there are regional
# variants too, but that should be enough to understand the tests.)
#
# See <http://en.wikipedia.org/wiki/Pig_latin> for more details.


def translate(str)
    str.split.map{|word| wordtrans(word)}.join(" ")
end

def wordtrans(word)
	word_arr = word.split("")
	word_arr[0].scan(/[aeiou]/).empty? ? constrans(word) : word << "ay"
end

def constrans(word)
	arr = word.split("") 
	vowels = %w{a e i o u}
	until vowels.include?(arr[0]) do
		if arr[0..1].join("") == "qu" 
			2.times{arr.shift} 
	        arr << "qu"
		else 
	        arr << arr.shift
		end

	end
    arr << "ay"
	arr.join("")
end
