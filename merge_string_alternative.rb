# You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, 
# starting with word1. If a string is longer than the other, append the additional letters onto the end 
# of the merged string.

# Return the merged string.

# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
    iterations = word1.length > word2.length ? word2.length : word1.length
    merged_string = '' 
    i = 0
    while i < iterations do
        merged_string.concat(word1[i] + word2[i])
        i = i+1
    end
    word1.length > word2.length ? merged_string.concat(*word1[i..-1]) : merged_string.concat(*word2[i..-1])
    return merged_string
end

word1 = "abcdef"
word2 = "xyz"

puts merge_alternately(word1, word2)