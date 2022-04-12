# Дана последовательность:
# 1
# 11
# 21
# 1211
# 111221
# 312211
# 13112221
# Необходимо написать программу на Ruby, которая генерирует последовательность 
# такого рода.

class Stack
    attr_accessor :count

    def initialize (count)
        @count = count
    end

    def count_and_say n
        r = '1'
        (n - 1).times do
            s = ''; t = r[0]; c = 1
            for i in 1...r.size
                r[i] == t ? (c += 1) : (s += c.to_s + t; t = r[i]; c = 1)
            end
            r = s + c.to_s + t
        end
        r
    end
end

class Print
    def initialize (count)
        @res = Stack.new(count)
    end

    def to_console
        for i in 1..@res.count
            puts @res.count_and_say(i)
        end
    end 
end
     
p = Print.new(6)
p.to_console



