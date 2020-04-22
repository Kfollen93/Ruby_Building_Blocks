array = [17,3,6,9,15,8,6,1,10]
def stock_picker(array)
  array.each do |i|
    min_index = array.index(array.min)
   p new_array = array[min_index..-1]
    max_index_of_new_array = new_array.index(new_array.max)
    min = new_array.min
    max = new_array.max
    var = max - min
    p "#{max} - #{min} = #{var}"

    #remove the current min_index and max_index
    #return new array
    array.slice!(min_index, max_index_of_new_array + 1) #this returns a range and not both points
    p array
  end
    
end

stock_picker(array)




=begin
Chop off everything before the lowest value, then find the highest value, subtract highest by lowest.
Then can repeat until you find which provides the biggest difference to output.

you just need to find a way to iterate through an array of values,
and pick two values in sequential order that would yield
the greatest difference when b is subtracted from a
i.e., (A - B = difference)
Returning a portion of the array i.e. The index [1,4]

first find the lowest value ( array.min )
find the highest value remaining in the array that comes after it
Once found, subtract the > value by the lowest value and store that value in var1

Restart the loop but remove those two values that were used above

First find the lowest value ( array.min )
Find the highest value remaining in the array that comes after it 
Once found, subtract the > value by the lowest value and store that value in var2

Restart...



When the array gets to the point where there is not a second variable to
subtract by, then it can break(stop).

Then return the variable that has the highest sum and display the indexes of those values from the original array.




REPL



[17,8,6]
=begin
options are:
10-1 = 9
15 -3 = 12
9-6 = 3



=end