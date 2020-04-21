dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dictionary)
    output = {}
    dictionary.each do |substring| #iterates over dictionary
      str.downcase.scan(substring) #checks str against each value in dictionary
      count = str.downcase.scan(substring).count #gather the count
      output[substring] = count if count > 0 #outputs the substring and count if > 0
    end
    output
  end
  
  puts substrings("Howdy partner, sit down! How's it going?", dictionary)