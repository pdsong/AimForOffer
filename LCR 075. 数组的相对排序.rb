# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer[]}
def relative_sort_array(arr1, arr2)
  count = Hash.new(0)
  arr1.each { |x| count[x] += 1 }

  res = []
  arr2.each do |x|
    res += [x] * count.delete(x)
  end
  res += count.keys.sort
  res
end