# Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent. 
# Return the answer in any order.


def letter_combinations(arg)
    phone_number = {
        '2' => ['a', 'b', 'c'],
        '3' => ['d', 'e', 'f'],
        '4' => ['g', 'h', 'i'],
        '5' => ['j', 'k', 'l'],
        '6' => ['m', 'n', 'o'],
        '7' => ['p', 'q', 'r', 's'],
        '8' => ['t', 'u', 'v'],
        '9' => ['w', 'x', 'y', 'z']
    }
    str = arg.to_s.split('')
    b = phone_number.slice(*str)&.values
    return [] unless b.length > 0
    b.first.product(*b[1..-1]).map(&:join)
end

puts letter_combinations('023')