# @param {String} s
# @return {String[][]}
def partition(s)
  result = []
  backtrack(s, 0, [], result)
  result
end

def backtrack(s, start, cur, result)
  if start >= s.length
    result.push(cur.dup)
  end

  (start...s.length).each do |i|
    if palindrome?(s, start, i)
      cur.push(s[start..i])
      backtrack(s, i + 1, cur, result)
      cur.pop
    end
  end
end

def palindrome?(s, left, right)
  while left < right
    return false if s[left] != s[right]
    left += 1
    right -= 1
  end
  true
end