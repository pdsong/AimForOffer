# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)
  @res=[]
  backtrack(0,[],candidates,target)
  @res
end

def backtrack(start_index,current_subset,candidates,target)
  current_subset_sum=current_subset.sum
  # 子数组的和大于等于目标就处理并返回
  if current_subset_sum==target
    @res<<current_subset.dup
    return
  elsif current_subset_sum>target
    return
  end
  
  (start_index...candidates.size).each do |i|
    current_subset<<candidates[i]
    backtrack(i,current_subset,candidates,target)
    current_subset.pop
  end
end