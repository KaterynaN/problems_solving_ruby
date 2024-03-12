# Given the head of a linked list, we repeatedly delete consecutive 
#sequences of nodes that sum to 0 until there are no such sequences.

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

def linked_list_to_array(head)
    array = []
    current_node = head
  
    while current_node != nil
      array << current_node.val
      current_node = current_node.next
    end
  
    array
  end

  def array_to_linked_list(array)
    return nil if array.empty?
  
    head = ListNode.new(array[0])
    current_node = head
  
    (1...array.length).each do |i|
      current_node.next = ListNode.new(array[i])
      current_node = current_node.next
    end
  
    head
  end

# @param {ListNode} head
# @return {ListNode}
def remove_zero_sum_sublists(head)
    # Initialize a dummy node to handle the case where the whole list sums to zero
  dummy = ListNode.new(0)
  dummy.next = head
  sum_map = {0 => dummy}
  prefix_sum = 0
  current = head

  # Traverse the linked list and compute the running sum
  while current != nil
    prefix_sum += current.val

    # If the sum already exists in the map, it means there's a zero-sum sublist
    if sum_map.key?(prefix_sum)
      # Remove nodes between the two occurrences of the same sum
      temp = sum_map[prefix_sum].next
      sum = prefix_sum
      while temp != current
        sum += temp.val
        temp = temp.next
        sum_map.delete(sum)
      end

      # Update the next pointer of the previous node
      sum_map[prefix_sum].next = current.next
    else
      # Store the current sum and node in the map
      sum_map[prefix_sum] = current
    end

    # Move to the next node
    current = current.next
  end

  # Return the head of the updated linked list
  dummy.next
end

def remove_zero_sum_subarrays(head)
    # Initialize a hash map to store the running sum and its first occurrence index
    sum_map = {0 => -1}
    prefix_sum = 0
    current_sum = 0
  
    # Compute the running sum and store the first occurrence index in the map
    sum_map[prefix_sum] = -1
  
    head.each_with_index do |val, index|
      current_sum += val
      if sum_map.key?(current_sum)
        # Remove elements from the array between the two occurrences of the same sum
        head.slice!(sum_map[current_sum] + 1..index)
      else
        sum_map[current_sum] = index
      end
    end
  
    head
  end

head1 = array_to_linked_list([1, 2, -3, 3, 1])
head2 = array_to_linked_list([1,2,3,-3,4])
puts linked_list_to_array(remove_zero_sum_sublists(head1))
puts'-------'
puts linked_list_to_array(remove_zero_sum_sublists(head2))
puts 'Remove zero if param is array'
puts remove_zero_sum_subarrays([1,2,-3,3,1])
