# Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    nums.tally.min_by{|k, v| v}.first
end

nums = [4, 1, 2, 1, 2]
puts single_number(nums)