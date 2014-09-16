# This method returns a list of perfect squares smaller than num.
def perfect_squares(num)
    array = []
    i = 1
    while i*i < num
        array << i
        i += 1
    end
    array.map{|i| i*i}
end


