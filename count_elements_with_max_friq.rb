# You are given an array nums consisting of positive integers.
# Return the total frequencies of elements in nums such that those
#  elements all have the maximum frequency.

# @param {Integer[]} nums
# @return {Integer}
def max_frequency_elements(nums)
    number = nums.tally.group_by{|k,v| v}.sort.last
    return number.first * number.last.size
end

puts max_frequency_elements([1, 2, 2, 3, 1, 4])
puts max_frequency_elements ([1, 2, 3, 4, 5])
puts max_frequency_elements([10, 12, 11, 9, 6, 19, 11])