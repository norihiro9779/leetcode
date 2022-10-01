
# Input: nums = [1,7,3,6,5,6]
# Output: 3
# Explanation:
# The pivot index is 3.
# Left sum = nums[0] + nums[1] + nums[2] = 1 + 7 + 3 = 11
# Right sum = nums[4] + nums[5] = 5 + 6 = 11

# すべての合計値から左端の数値を順番に引いていく
# 引いた数値の合計が一致するかどうかで判定している

# @param {Integer[]} nums
# @return {Integer}
class Solution
  def pivot_index(nums)
    # 28
    right_sum = nums.sum()
    left_sum = 0
    nums.length.times do |i|
      # 28 - 1 = 27
      right_sum -= nums[i]
      # 27 == 1
      return i if left_sum == right_sum
      # left_sum == 1
      left_sum += nums[i]
    end
    return -1
  end
end

puts Solution.new.pivot_index([2,1,-1])

