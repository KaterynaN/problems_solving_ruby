#Hash
fib1 = Hash.new { |hash, key| key < 2 ? key : hash[key - 1] + hash[key - 2] }
puts fib1[6]

#lambda
f = ->(x){ x < 2 ? x : f[x-1] + f[x-2] }
puts f[6]
