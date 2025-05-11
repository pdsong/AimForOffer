# @param {Integer[]} nums
# @return {Integer}
#  自己写的
def rob_single(nums)
    res=[]
    res[0]=nums[0]
    res[1]=[nums[0],nums[1]].max
    (2...nums.length).each do |i|
      res[i]=[res[i-1],res[i-2]+nums[i]].max
    end
    res[-1]
end

def rob(nums)
    return nums[0] if nums.length==1
    return [nums[0],nums[1]].max if nums.length==2
    return [nums[0],nums[1],nums[2]].max if nums.length==3
    [rob_single(nums[0...nums.length-1]),rob_single(nums[1...nums.length])].max
end