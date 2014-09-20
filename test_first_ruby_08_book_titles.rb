# # Book Titles
#
# # Topics
#
# * classes and objects
# * instance variables
# * setter methods
# * strings
#
# # Notes
#
# Book Titles in English obey some strange capitalization rules. For
# example, "and" is lowercase in "War and Peace". This test attempts
# to make sense of some of those rules.

class Book
	attr_accessor :title
	def title
		stopwords = %w{the a an and in the of}
		@title.split.each_with_index.map {|word,index| stopwords.include?(word) &&  index > 0 ? word : word.capitalize }.join(" ")
	end
end
