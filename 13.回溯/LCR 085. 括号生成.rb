# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  @res=[]
  backtrack("",0,0,n)
  @res
end

def backtrack(current,left_count,right_count,n)
  if current.length==n*2
    @res<<current
    return
  end
  if left_count<n
    backtrack(current+"(",left_count+1,right_count,n)
  end
  if right_count<left_count
    backtrack(current+")",left_count,right_count+1,n)
  end

end











