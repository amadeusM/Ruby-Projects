# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)

def bubble_sort(arr)
    i = 0
    while i < arr.length-1
        if arr[i] > arr[i+1]
            old_value = arr[i]
            arr[i] = arr[i+1]
            arr[i+1] = old_value
        end
        i+= 1
    end
    arr == arr.sort ? arr : bubble_sort(arr)
end
