# Given two integer arrays nums1 and nums2, sorted in non-decreasing order, 
# return the minimum integer common to both arrays. If there is no common 
# integer amongst nums1 and nums2, return -1.

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def get_common(nums1, nums2)
    (nums1 & nums2)&.first || -1
end

puts get_common([1, 2, 3], [4])