def my_min1(list) # O(n^2)
  final = []
  list.each do |el1|
    smallest = el1
    list.each do |el2|
      if el2 < smallest
        smallest = el2
      end
    end
    final << smallest
  end
  final.last
end

def my_min2(list) # O(n)
  smallest = list.first
  list.each do |el|
    if smallest > el
      smallest = el
    end
  end
  return smallest
end


def lcs1(list) # O(n^2)

  final_sum = list.first

  i = 0
  while i < list.length
    j = i
    while j < list.length
      sum = list[i..j].reduce(:+)
        if sum > final_sum
          final_sum = sum
        end

        j += 1
        sum = nil
    end
    i += 1
  end
  return final_sum
end

def lcs2(list)

  i = 1
  max =  list.first
  temp = max
  while i < list.length

    if temp < 0
      temp = 0
      temp += list[i]
      if temp > max
        max = temp
      end
      i += 1
    else
      temp += list[i]
      if temp > max
        max = temp
      elsif temp < 0
        temp = 0
      end
      i += 1
    end
  end
  return max
end
