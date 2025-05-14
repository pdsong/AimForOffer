# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
  nums.permutation.to_a
end



# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
  @res=[]
  backtrack(0,[],nums)
  @res
end


def backtrack(start_index,current_subset,nums)
  if current_subset.length==nums.length
    @res<<current_subset.dup
    return
  end 

  nums.each do |num|
    next if current_subset.include?num
    current_subset<<num
    backtrack(0,current_subset,nums)
    current_subset.pop
  end
end





# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
  @res=[]
  backtrack(0,[],nums,[])
  @res
end


def backtrack(start_index,current_subset,nums,used)
  if current_subset.length==nums.length
    @res<<current_subset.dup
    return
  end 

  (start_index...nums.length).each do |i|
    next if used[i]
    current_subset<<nums[i]
    used[i]=true
    backtrack(0,current_subset,nums,used)
    current_subset.pop
    used[i]=false
  end
end






