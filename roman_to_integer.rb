# convert roman numbers to integer
def roman_to_int(s)
    roman_num = {1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M'}.invert
    res = 0
    i = 0

    while i < s.length do 
        if i + 1 < s.length && roman_num[s[i]] < roman_num[s[i+1]]
            res += roman_num[s[i+1]] - roman_num[s[i]]
            i+=1
        else
            res +=roman_num[s[i]]
        end
        i+=1      
    end
    return res
end

    puts roman_num
    puts roman_to_int("MCMXCV")