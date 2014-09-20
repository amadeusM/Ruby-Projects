class Dictionary
	attr_accessor :entries
	def initialize
		@entries = {}
	end

	def add(entry)
		if entry.is_a? String
			@entries[entry] = nil
		else
			entry.each do |key,definition|
				@entries[key] = definition
			end
		end
	end

	def include?(keyword)
		keywords.include?(keyword)
	end

	def find(str)
		matches = {}
		if @entries == {}
			{}
		elsif include?(str) 
			matches[str] = @entries[str]
		else
			@entries.each {|key,definition|
				matches[key] = definition if key.scan(/^../) == [str]
			}
		end 
		matches
	end

	def keywords
		@entries.keys.sort!
	end

	def printable
		string = ""
		@entries.sort.each do |key,definition| 
			string << "[#{key}] \"#{definition}\"\n"
		end
		chars = string.split("") #<= The next three steps remove the extraneous white space at the end of the string
		chars.pop
		chars.join
	end
end

