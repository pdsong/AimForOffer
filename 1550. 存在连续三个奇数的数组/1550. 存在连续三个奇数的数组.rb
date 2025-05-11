def three_consecutive_odds(arr)
  arr.each_slice(3).any? { |slice| slice.all?(&:odd?) }
end


# 我写的
def three_consecutive_odds(arr)
    (0...arr.length-2).each do |i|
      if(arr[i] % 2 == 1 && arr[i+1] % 2 == 1 && arr[i+2] % 2 == 1)
        return true
      end
    end
    false
end