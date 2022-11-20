def reverseString(string)
   string.size < 2 ? string : string[-1] + reverseString(string[1..-2]) + string[0] 
end

puts reverseString("hello") # 'olleh'

s = "hello" 
puts s[1..-2] # 'ell'