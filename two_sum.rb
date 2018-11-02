require "byebug"
def bad_sum(array, target)

  (0...array.length).each do |i|
    (i+1...array.length).each do |j|
      return true if array[i] + array[j] == target
    end
  end
  return false
end


def okay_sum(array, target)

  array.sort!
  temp = []
  array.each do |num|
    temp << target - num
  end
  temp.sort!
  temp.each_with_index do |int,i|
    result = array.bsearch.with_index {|el, idx| el + int == target && idx != i }
    byebug
    return true if result
  end
  return false
end
