
def caesar(str, number_shift)
    str_arr = str.split('')
    str_arr.map { |char| char.ord }.map { |ord|
        if ord < 65 || ord > 122
            ord.chr
        elsif ord >= 65 && ord < 97
            ((ord - 65 + number_shift) % 26 + 65).chr
        else
            ((ord - 97 + number_shift) % 26 + 97).chr    
        end

    }.join()
end

# puts caesar('Hello', 5)