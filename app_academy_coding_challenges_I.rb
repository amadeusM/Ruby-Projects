=begin
Q1: Write a method, pow, that takes two (non-negative, integer) numbers, base and exponent and returns base raised to the exponent power. (No fair using Ruby's base ** exponent notation!).

Q2: Write a method, sum which takes an array of numbers and returns the sum of the numbers.

Q3: Write a method, is_prime?, that takes a number num and returns true if it is prime and false otherwise.

You may wish to use the modulo operation: 5 % 2 returns the remainder when dividing 5 by 2: 1. If num is divisible by i, then num % i == 0. (You would not be expected to already know about modulo for the challenge)

Q4: Using your is_prime? method, write a new method, primes that takes a (non-negative, integer) number max and returns an array of all prime numbers less than max.
=end

# Q1 Solution
def pow(base,exponent)
  numbers = []
  exponent.times { numbers << base}
  numbers.inject(1){|result,num| result*num}
end  

# Q2 Solution
def sum(array)
  array.inject(0){|sum,num| sum + num}
end

# Q3 Solution
def is_prime?(num)
    if num == 2 || num == 3 || num == 5 || num == 7
        true
    else 
        num % 2 == 0 || num % 3 == 0 || num % 5 == 0 || num % 7 == 0 ? false:true
    end
end
  
