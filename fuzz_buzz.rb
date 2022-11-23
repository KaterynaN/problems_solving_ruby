# Given an integer n, return a string array answer (1-indexed) where:

# answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
# answer[i] == "Fizz" if i is divisible by 3.
# answer[i] == "Buzz" if i is divisible by 5.
# answer[i] == i (as a string) if none of the above conditions are true.

# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    (1..n).map do |num|
        next "FizzBuzz" if (num%15).zero?
        next "Fizz" if (num%3).zero?
        next "Buzz" if (num%5).zero?
        num.to_s
    end
end

def fizz_buzz_1(n)
    i = 1
    arr = []
    while i <= n do
        if i%3 == 0 && i%5 == 0
            arr<<"FizzBuzz"
        elsif i%3==0
            arr<<"Fizz"
        elsif i%5==0
            arr<<"Buzz"
        else
            arr<<i.to_s
        end
        i = i+1
    end
    return arr
end

def fizz_buzz_2(n)
    fizz_buss_array = []
    fizz = 'Fizz'.freeze
    buzz = 'Buzz'.freeze
    fizz_buzz = 'FizzBuzz'.freeze
    (1..n).each { |num|
        str = if(num % 15 == 0)
            fizz_buzz
        elsif(num % 5 == 0)
            buzz
        elsif(num % 3 == 0)
            fizz
        else
            "#{num}"
        end
        fizz_buss_array << str
    }
    fizz_buss_array
end

puts fizz_buzz(15)
puts "___________________"
puts fizz_buzz_1(15)
puts fizz_buzz_2(15)