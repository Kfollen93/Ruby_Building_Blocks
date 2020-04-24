# frozen_string_literal: true

array = [4, 3, 78, 2, 0, 2]

def bubble_sort(array)
  (0...array.length - 1).each do |num|
    if array[num] > array[num + 1]
      array[num], array[num + 1] = array[num + 1], array[num]
    end
    #inner loop fully runs for each iteration of outter loop
    (0...array.length - 1).each do |num|
      if array[num] > array[num + 1]
        array[num], array[num + 1] = array[num + 1], array[num]
       end
    end
  end
  print array
end

bubble_sort(array)
