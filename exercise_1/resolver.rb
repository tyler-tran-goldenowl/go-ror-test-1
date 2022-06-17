# write code here...
def f sum, array
  result = []
  dup = []
  temp = array.uniq
  temp.each do |i|
    number = sum - i 
    next if i == number
    next if dup.include? number
    result.push [i, number] if temp.include? number
    dup.push i
  end
  result
end

# p f(10, [3, 4, 5, 6, 7])
# p f(8, [3, 4, 5, 4, 4])
# p f(10, [3, 4, 5, 5, 7, 5, 5])