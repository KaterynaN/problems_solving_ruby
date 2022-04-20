def sorted_squares(nums)
    return (nums.map {|e| e**2}).sort
end

puts sorted_squares([-4,-1,0,3,10])