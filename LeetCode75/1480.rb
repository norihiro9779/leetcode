# Input: nums = [1,2,3,4]
# Output: [1,3,6,10]
# Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].

# @param {Integer[]} nums
# @return {Integer[]}
class Running
  def running_sum(nums)
    sum = 0
    nums.map do |num|
      sum += num
    end
  end
end

running = Running.new
nums = [1,2,3,4]
running.running_sum(nums)