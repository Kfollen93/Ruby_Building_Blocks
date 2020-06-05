def merge_sort(numbers)
return if numbers.length < 2
print numbers.each_slice((numbers.length/2.0).round).to_a # Needs to be a float here (2.0).
end

merge_sort([4, 8, 6, 2, 1, 5, 3])