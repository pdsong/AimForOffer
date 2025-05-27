def permute_unique(nums)
  @res=[]
  #先排序 用于处理重复问题
  nums.sort!
  backtrack(0,[],nums,[])
  @res
end


def backtrack(start_index,current_subset,nums,used)
  if current_subset.length==nums.length
    @res<<current_subset.dup
    return
  end 

  (start_index...nums.length).each do |i|
    # 当前元素被使用 | 当前元素是前一个元素的重复，并且前一个元素没有被使用
    next if used[i] ||(i>0 && nums[i]==nums[i-1] &&  !used[i-1])
    current_subset<<nums[i]
    used[i]=true
    backtrack(0,current_subset,nums,used)
    current_subset.pop
    used[i]=false
  end
end



#######################################################################
def permute_unique(nums)
  nums.reduce([[]]) { |perms, n|
    perms.flat_map { |p|
      last = p.index(n) || p.size
      (0..last).map { |i| p[0,i] + [n] + p[i..-1] }
    }
  }
end



############################################################################


# @param {Integer[]} nums
# @return {Integer[][]}
def permute_unique(nums)
  nums.permutation.to_a.uniq
end


