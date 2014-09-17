# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).

def ordered_vowel_words(str)
    ordered_vowel_words = []
    str.split.select do |word|
        ordered_vowel_words << word if ordered_vowel_word?(word)
    end
    ordered_vowel_words.join(" ")
end

def ordered_vowel_word?(word)
    word.scan(/[aeiou]/) == word.scan(/[aeiou]/).sort ? true : false
end
