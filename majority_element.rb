# Given an array nums of size n, return the majority element.
# Input: nums = [2,2,1,1,1,2,2]
# Output: 2

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    nums.tally.max_by{|k, v| v}.first
end

nums = [2,2,1,1,1,2,2]
nums1 = [6, 5, 5]
puts majority_element(nums1)
