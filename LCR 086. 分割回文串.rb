# @param {String} s
# @return {String[][]}
def partition(s)
  @res=[]
  backtrack(s,[])
  @res
end
def backtrack(s, path)
  if s.empty?
    @res<< path.dup
    return
  end

  (0...s.length).each do |i|
    