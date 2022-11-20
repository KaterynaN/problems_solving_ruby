

def pascal(i, j)
    return 'j cannot by bigger than i' if j > i
    if j==0 || i==j
        return 1
    else
        return(pascal(i-1, j) + pascal(i-1, j-1))
    end
end

puts pascal(4, 4)
puts pascal(4, 0)
puts pascal(4, 2)