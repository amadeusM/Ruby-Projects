# This method creates my version of the uniq method, which accepts an array and returns a modified array with duplicate elements removed.
class Array
    def my_uniq(array)
# Create a new empty array
        modified_array = []
# Iterate over the array to check for duplicate elements
        array.each do |i|
            modified_array << i if modified_array.include?(i) == false   
            end
# Return the modified array
        modified_array
    end
end


# This method checks whether an array contains a pair of numbers that sum to zero
def sum_checker(array)
# Check if the array contains at least 2 elements
    if array.length < 2
        false
    else
# Iterate over the array to check if the array has a -num (num and -num add up to zero)
        array.each do |num|
            return true if array.include?(-num)
        end
    end
    false
end
