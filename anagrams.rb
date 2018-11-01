require 'byebug'
def first_anagram(str1,str2) # Big O: factorial
  str1.chars.permutation.to_a.include?(str2.chars)
end

def second_anagram?(str1,str2) # Big O: n (because one loop)
  str1.chars.each do |ch|
    if str2.include?(ch)
      idx = str2.index(ch)
      str2[idx] = ""
    else
      return false
    end

  end
  str2 == "" ? true : false
end

def third_anagram(str1, str2) # Big O: n log n

  return str1.chars.sort == str2.chars.sort

end

def fourth_anagram?(str1,str2) # Big O: n (no nested loops)

  hash1 = Hash.new(0)
  # hash2 = Hash.new(0)

  str1.chars.each do |letter|
    hash1[letter] += 1
  end

  str2.chars.each do |letter|
    hash1[letter] -= 1
  end
  # debugger
  # hash1 == hash2
  hash1.values.none?{|el| el > 0}
end
