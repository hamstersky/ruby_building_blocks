def substrings(string, dictionary)
  substrings_count = Hash.new(0)
  dictionary.each do |word|
    string.downcase.scan(word) { substrings_count[word] +=1 }
  end
  substrings_count
end

p substrings("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])