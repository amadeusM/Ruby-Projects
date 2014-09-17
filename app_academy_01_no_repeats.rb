# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.

def no_repeats(year_start, year_end)
	no_repeat_years = []
	(year_start..year_end).each do |year|
		no_repeat_years << year if no_repeat?(year) 
	end
	no_repeat_years
end

def no_repeat?(year)
	nums = year.to_s.split('')
	interim_nums = []
	nums.each do |i|
		interim_nums << i if nums.count(i) == 1 
	end
	interim_nums.length == 4 ? true : false
end
