



# @param {Integer[]} digits
# @return {Integer[]}
def find_even_numbers(digits)
  h = digits.tally
  100.step(999, 2).filter { |x| x.digits.tally.all? { |d, c| h.fetch(d, 0) >= c } }
end

def find_even_numbers(digits)
    cnt = Hash.new(0)
    digits.each { |d| cnt[d] += 1 }
    ans = []
    (100..998).step(2) do |x|
        cnt1 = Hash.new(0)
        y = x
        while y > 0
            y, v = y.divmod(10)
            cnt1[v] += 1
        end
        if (0..9).all? { |i| cnt[i] >= cnt1[i] }
            ans << x
        end
    end
    ans
end