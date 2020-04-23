array = [17,3,6,9,15,8,6,1,10]
def stock_picker(array)
   result = 0
  array.each do |i|
    min_index = array.index(array.min)
    new_array = array[min_index..-1]
    max_index_of_new_array = new_array.index(new_array.max)
    min = new_array.min
    max = new_array.max
    var = max - min
    array.delete(min)
    array.delete(max)
    if var > result
      result = var
    end
  end
  p result
end

stock_picker(array)