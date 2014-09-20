# # Topics
#
# * stubs
# * blocks
# * yield
#
# # Performance Monitor
#
# This is (a stripped down version of) an actual useful concept: a
# function that runs a block of code and then tells you how long it
# took to run.

def measure(n=1)
	start_time = Time.now
	n.times {yield}
	end_time = Time.now
	average_time = (end_time - start_time)/n
end
