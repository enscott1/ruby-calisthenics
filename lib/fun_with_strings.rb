module FunWithStrings
  
  def palindrome?
    str = self.downcase.gsub(/[^a-z]/, "")
    return str == str.reverse
  end
  
  def count_words
    counts = Hash.new 0
    words = self.downcase.gsub(/[^a-z]/, " ").split
    words.each do |word|
      counts[word] += 1
    end
    return counts
  end
  
  def anagram_groups
    words = self.downcase.split(" ")
    words.map do |word|
      words.select{ |word2| word.chars.sort.join("") == word2.chars.sort.join("")}
    end.uniq
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
