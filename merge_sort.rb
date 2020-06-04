def merge_sort(num_array)
return if num_array.length < 2

left_half_length = num_array.length / 2
p left_half = num_array.slice(0, left_half_length)
right_half_length = num_array.length / 2
p right_half = num_array.slice(4, right_half_length)
merge_sort(num_array)



end

merge_sort([4, 8, 6, 2, 1, 7, 5, 3])