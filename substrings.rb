def substrings(*strings, dict)
  return_hash = {}
  strings = strings.join.split(" ")
  p strings
  dict.each do |word|
    strings.each do |subst|
      if subst.downcase.include?(word.downcase)
        if return_hash.has_key?(word.downcase)
          return_hash[word] += 1
        end
      end
    end
  end
  p return_hash
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
