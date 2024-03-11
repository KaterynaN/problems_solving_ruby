# You are given two strings order and s. All the characters of order are unique and were sorted in some custom order previously.
# Permute the characters of s so that they match the order that order was sorted. More specifically, if a character x occurs before a character y in order, then x should occur before y in the permuted string.
# Return any permutation of s that satisfies this property.

# @param {String} s
# @return {String}
def custom_sort_string(order, s)
    s_chars = s.chars
    sorted = []

    # First, iterate through order string
    order.each_char do |char|
        # Add characters from s that match the current order character
        matching_chars = s_chars.select { |c| c == char }
        sorted.concat(matching_chars)

        # Remove matched characters from s_chars
        s_chars -= matching_chars
    end

    # Add any remaining characters from s_chars
    sorted.concat(s_chars)

    # Join the sorted characters into a string
    sorted.join
end

puts custom_sort_string('cba', 'abcd')
puts custom_sort_string('bcafg', 'abcd')
puts custom_sort_string('kqep', 'pekeq')