class Timer
	attr_accessor :seconds
	def initialize
		@seconds = 0
	end
	def time_string
		"00:00:00" if @seconds == 0
		@seconds < 60 ? "00:00:#{padded(@seconds)}" : minutes_and_hours(@seconds)
	end
	def minutes_and_hours(seconds)
		minutes = @seconds/60
		hours = @seconds/3600
		rem_minutes = padded(minutes % 60)
		rem_seconds = padded(@seconds % 60)
		if @seconds < 3600
			"00:#{padded(minutes)}:#{rem_seconds}"	
		else 
			"#{padded(hours)}:#{rem_minutes}:#{rem_seconds}"
		end
	end
	def padded(num)
		num.to_s.rjust(2,"0")
	end
end
