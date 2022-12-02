array = [1, [2, [3, 4, 5] ]]

def count_inner_arrays(arr)
    sub_arrays = arr.select { |el| el.is_a? Array }
    sub_arrays.empty? ? 1 : sub_arrays.map(&method(:count_inner_arrays)).inject(1, :+)
  end  

puts count_inner_arrays(array) # puts 3