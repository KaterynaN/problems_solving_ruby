def minimum_length(s)
    return 0 if s.empty?
    while s.length > 0
        return 1 if s.length == 1
        if s[0] == s[s.length-1]
            temp = s[0]
            s.delete_prefix!(temp)
            s.delete_suffix!(temp)
            puts s
            
            while s[0] == temp
                s.delete_prefix!(temp)    
            end
            while s[s.length-1] == temp
                s.delete_suffix!(temp)  
            end
            return 0 if s.empty?
        else
            return s.length
        end
    end
end

puts minimum_length("cabaabac")
