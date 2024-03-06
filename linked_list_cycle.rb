# We are given the head of a linked list. Our task is to determine 
# if the linked list contains a cycle. A cycle exists in a linked list 
# when a node can be reached again by continuously following the next pointer. 
# The variable pos internally denotes the index of the node where the tail's next 
# pointer is connected to. We do not receive pos as a parameter. Our goal is to return 
# True if a cycle exists and False if the linked list is cycle-free.

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
    return false unless head&.next

    slow = head
    fast = head.next
    while slow != fast
        return false unless fast&.next
        slow = slow.next
        fast = fast.next.next
    end

    return true
end

puts hasCycle([3,2,0,-4])