# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum2(candidates, target)
  @res=[]
  candidates.sort!
  backtrack(0,[],candidates,target)
  @res
end

def backtrack(start_index,current_subset,candidates,target)
  current_subset_sum=current_subset.sum
  if current_subset_sum==target
    @res<<current_subset.dup
    return
  end 
  if current_subset_sum>target
    return
  end
  (start_index...candidates.size).each do |i|
    next if i>start_index && candidates[i]==candidates[i-1]
    current_subset<<candidates[i]
    backtrack(i+1,current_subset,candidates,target)
    current_subset.pop
  end
end