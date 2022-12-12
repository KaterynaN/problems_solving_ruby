#duplicate each occurrence of zero, shifting the remaining elements to the right
# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
    i = 0
    while i< arr.size
        if arr[i] == 0
            arr.insert(i+1, 0)
            i += 2
            arr.pop
        else
            i += 1
        end
    end
    return arr
end

arr = [1, 2, 0, 3, 0, 4, 0, 5]
p duplicate_zeros(arr)