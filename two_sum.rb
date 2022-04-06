# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# You can return the answer in any order.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

        def two_sum(nums, target)
  dict = {}
  nums.each_with_index do |n, i|
            # puts "test array index #{i}  value #{n}"
    if dict[target - n]
      return dict[target - n], i
    end
    dict[n] = i
            # puts dict
  end
end

  puts two_sum([3 , 2, 4, 20], 24)

#1 n = 3 i = 0 
#    dict[24 - 3] false
#    dict[3] = 0
#2 n = 2 i = 1
#    dict[24 - 2] false
#    dict[2] = 1
#3 n = 4 i = 2
#    dict[24 - 4] false
#    dict[4] = 2
#4 n = 20 i = 3
#    dict[24 - 20] = dict [4] true
#    return dict[4] = 2, 3
    