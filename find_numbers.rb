def find_numbers(nums)
    res = 0
    nums.each do |e|
        res += 1 if e.to_s.chars.length.even?
    end
    return res
end

puts find_numbers([11, 234, 342, 5678, 5, 786543])