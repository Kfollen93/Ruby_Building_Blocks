
def caesar(str, shift)
    str_arr = str.split('')
    str_arr.map { |char| char.ord }.map { |ord|
        if ord < 65 || ord > 122
            ord.chr
        else
            ord > 65 && ord < 97 ?
            ((ord - 65 + shift)%26 +65).chr :
            ((ord - 97 + shift)%26 +97).chr    
        end

    }.join()
end

puts caesar('Sup mate!', 29)