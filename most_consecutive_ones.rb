def find_max_consecutive_ones(nums)
    res = 0
    i = 0
    temp = 0
    while i < nums.length do
        if nums[i] == 1
            res+=1
        else 
            if res > temp
                temp = res
                res = 0
            else
                res = 0
            end  
        end
        i+=1
    end
    return (res > temp ? res : temp)
end

puts find_max_consecutive_ones([1,1,1,0,1,1,0])