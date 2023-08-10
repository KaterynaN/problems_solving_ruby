# Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, 
# or -1 if needle is not part of haystack.

# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    haystack.include?(needle) ? haystack.index(needle) : -1 
 end

 haystack = "sadbutsad"
 needle = "sad"

 puts str_str(haystack, needle)