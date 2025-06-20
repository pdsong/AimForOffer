# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  intervals.sort! {|a,b| a[0]<=>b[0]}
  merged = []
  intervals.each do |interval|
    if merged.empty? || merged.last[1] < interval[0]
      merged << interval
    else
      merged.last[1] = [merged.last[1], interval[1]].max
    end
  end
  merged
end