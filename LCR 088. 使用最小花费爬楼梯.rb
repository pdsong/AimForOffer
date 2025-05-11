# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
    return 0 if nums.empty?
    return nums[0] if nums.length==1
    res=[]
    res[0]=nums[0]
    res[1]=[nums[0],nums[1]].max
    (2...nums.length).each do |i|
      res[i]=[res[i-1],res[i-2]+nums[i]].max
    end
    res[-1]
end



# 省空间写法 感觉没必要
def rob(nums)
  return 0 if nums.empty?
  return nums[0] if nums.length == 1

  first = nums[0]  
  second = [nums[0], nums[1]].max  

  (2...nums.length).each do |i|
    current = [second, first + nums[i]].max 
    first = second 
    second = current  
  end

  second 
end


min_cost_climbing_stairs([1,100,1,1,1,100,1,1,100,1])