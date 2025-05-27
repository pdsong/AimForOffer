# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
def combine(n, k)
  @res=[]
  backtrack(1,[],n,k)
  @res
end

def backtrack(start_index,current_subset,n,k)
   if current_subset.length==k
    @res<<current_subset.dup
    return
   end
  
  (start_index..n).each do |i|
    current_subset<<i
    backtrack(i+1,current_subset,n,k)
    current_subset.pop
  end
end

################################################################


# 哼。
def combine(n, k)
  (1..n).to_a.combination(k).to_a
end

################################################################



# java
class Solution {
    List<List<Integer>> res;
    public List<List<Integer>> combine(int n, int k) {
        res=new ArrayList<>();
        dfs(n,k,new ArrayList<Integer>(),1);
        return res;
    }
    public void dfs(int n,int k,ArrayList<Integer> cur,int index){
        if(cur.size()==k){
            res.add(new ArrayList<>(cur));
            return ;
        }
        for(int i=index;i<=n;i++){
            cur.add(i);
            dfs(n,k,cur,i+1);
            cur.remove(cur.size()-1);
        }
    }
}