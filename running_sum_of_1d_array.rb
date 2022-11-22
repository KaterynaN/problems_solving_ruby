# define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
# Return the running sum of nums.
def running_sum(nums)
    sum = 0
    nums.map{ |n| sum += n }
end

arr = [1, 2, 3, 4]
puts running_sum(arr)