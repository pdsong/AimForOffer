# @param {Integer[][]} costs
# @return {Integer}
def min_cost(costs)
  return 0 if costs.empty?
  dp = Array.new(costs.length){Array.new(3,0)}
  dp[0]=costs[0]
  (1...costs.size).each do |i|
    dp[i][0]=[dp[i-1][1],dp[i-1][2]].min+costs[i][0]
    dp[i][1]=[dp[i-1][0],dp[i-1][2]].min+costs[i][1]
    dp[i][2]=[dp[i-1][0],dp[i-1][1]].min+costs[i][2]
  end
  [dp[-1][0],dp[-1][1],dp[-1][2]].min
end

# 考虑减少空间复杂度
# 用三个变量存储dp的值