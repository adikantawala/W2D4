
def first_anagram(str1,str2)
  str1.chars.permutation.to_a.include?(str2.chars)
end

def second_anagram?(str1,str2)
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
