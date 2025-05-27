# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  @res=[]
  backtrack(0,[],nums)
  @res


end

def backtrack(start_index,current_subset,nums)
  @res<<current_subset.dup
  (start_index...nums.size).each do |i|
    current_subset<<nums[i]
    backtrack(i+1,current_subset,nums)
    current_subset.pop
  end

end


# java
class Solution {
    private final List<List<Integer>> ans = new ArrayList<>();
    private final List<Integer> path = new ArrayList<>();
    private int[] nums;

    public List<List<Integer>> subsets(int[] nums) {
        this.nums = nums;
        dfs(0);
        return ans;
    }

    private void dfs(int i) {
        ans.add(new ArrayList<>(path)); // 固定答案
        if (i == nums.length) return;
        for (int j = i; j < nums.length; ++j) { // 枚举选择的数字
            path.add(nums[j]);
            dfs(j + 1);
            path.remove(path.size() - 1); // 恢复现场
        }
    }
}

