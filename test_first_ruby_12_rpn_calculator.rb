# # Topics
# * arrays
# * arithmetic
# * strings
#
# # RPN Calculator
#
# "RPN" stands for "Reverse Polish Notation". (See [the wikipedia
# entry](http://en.wikipedia.org/wiki/Reverse_Polish_notation) for
# more information on this colorful term.) Briefly, in an RPN world,
# instead of using normal "infix" notation, e.g.
#
#     2 + 2
#
# you use "postfix" notation, e.g.
#
#     2 2 +
#
# While this may seem bizarre, there are some advantages to doing
# things this way. For one, you never need to use parentheses, since
# there is never any ambiguity as to what order to perform operations
# in. The rule is, you always go from the back, or the left side.
#
#     1 + 2 * 3 =>
#     (1 + 2) * 3 or
#     1 + (2 * 3)
#
#     1 2 + 3 * => (1 + 2) * 3
#     1 2 3 * + => 1 + (2 * 3)
#
# Another advantage is that you can represent any mathematical formula
# using a simple and elegant data structure, called a
# [stack](http://en.wikipedia.org/wiki/Stack_(data_structure)).
#
# # Hints
#
# Ruby doesn't have a built-in stack, but the standard Array has all
# the methods you need to emulate one (namely, `push` and `pop`, and
# optionally `size`).
#
# See
# * <http://en.wikipedia.org/wiki/Reverse_Polish_notation>
# * <http://www.calculator.org/rpn.aspx>

class RPNCalculator
	attr_accessor :calculator
	def initialize
		@calculator = [] 
	end
	def pop_and_push(result)
		2.times { @calculator.pop }
		@calculator << result
	end
	def plus
		if @calculator == [] 
			raise "calculator is empty" 
		else 
			result = @calculator[-1] + @calculator[-2]
		end
		pop_and_push(result)
	end
	def minus
		if @calculator == [] 
			raise "calculator is empty" 
		else 
			result = @calculator[-2] - @calculator[-1]
		end
		pop_and_push(result)
	end
	def times
		if @calculator == [] 
			raise "calculator is empty"
		else 
			result = @calculator[-1].to_f * @calculator[-2].to_f
		end
		pop_and_push(result)
	end
	def divide
		if @calculator == []
			raise "calculator is empty"
		else 
			result = @calculator[-2].to_f / @calculator[-1].to_f
		end
		pop_and_push(result)
	end
	def tokens(str)
		str.split.map{|e| e.scan(/\d/).empty? ? e.to_sym : e.to_i}
	end
	def push(num)
		@calculator << num 
	end
	def value
		@calculator[-1]
	end
	def evaluate(str)
		@calculator = tokens(str)
		@calculator.each {|item|
			if item == :+
				@calculator.plus 
			elsif item == :-
				@calculator.minus
			elsif item == :*
				@calculator.times 
			elsif item == :/
				@calculator.divide 
			end
		}
	end
end
