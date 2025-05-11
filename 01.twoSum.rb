# @param {Integer[]} arr
# @return {Boolean}
def three_consecutive_odds(arr)
    (0...arr.length-3).each do |i|
      if(arr[i] % 2 == 1 && arr[i+1] % 2 == 1 && arr[i+2] % 2 == 1)
        return true
      end
    end
    false
end


puts three_consecutive_odds([2,6,4,1])
puts three_consecutive_odds([1,2,34,3,4,5,7,23,12])
