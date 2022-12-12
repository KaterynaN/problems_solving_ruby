#You are climbing a staircase. It takes n steps to reach the top.
#Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
# @param {Integer} n
# @return {Integer}

def climb_stairs(n)
    a, b = 0, 1
    n.times { a, b = b, a + b }
    return b
end

def climb_stairs(n)
    return n if n <= 2
    (2...n).inject([1, 2]) { |sum, _| [sum.last, sum.first + sum.last] }.last
  end

  def climb_stairs(n)
    fib = { 0 => 0, 1 => 1, 2 => 2, 3 => 3 }
    fib.default_proc = ->(f,n) { f[n] = f[n-1] + f[n-2] }
    fib[n]
end