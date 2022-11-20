#Hash
fib1 = Hash.new { |hash, key| key < 2 ? key : hash[key - 1] + hash[key - 2] }
puts fib1[6]

#lambda
f = ->(x){ x < 2 ? x : f[x-1] + f[x-2] }
puts f[6]

#with memoize
@cash = {}
def func(i)
    if @cash.keys.include?(i)
        return @cash[i]
    elsif i < 2
        return i
    else
        @cash[i] = func(i-2)+func(i-1)
        return func(i-2) + func(i-1)   
    end
end

puts func(6)