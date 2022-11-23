# Given an integer num, return the number of steps to reduce it to zero.
# In one step, if the current number is even, you have to divide it by 2, 
# otherwise, you have to subtract 1 from it.

# @param {Integer} num
# @return {Integer}

#with recurcion (need to @res = 0 to be true)
@res = 0
def number_of_steps_recurcion(num)
    if num != 0
        num = num.even? ? num/2 : num-1
        @res += 1
        number_of_steps_recurcion(num)
    end
    @res
end

def number_of_steps(num)
    steps = 0
    while num > 0
        num = num.even? ? num/2 : num-1
        steps += 1
    end
    steps
end

# to_s(2) => convert integer to string of binary
# when convert to binary always devide by 2 if 0 - odd, if 1 - even
# we have to count all devided steps + count '1'(when was -) and after it -1
def number_of_steps_binary(num)
    num.to_s(2).chars.then{ |chars| chars.count + chars.count('1') - 1 }
end

puts number_of_steps_recurcion(14)
puts number_of_steps(8)
puts number_of_steps_binary(14)

# time complexity O(log n)
# space complexity 0(1)