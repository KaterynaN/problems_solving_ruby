# Given the head of a singly linked list, 
# return the middle node of the linked list.
# If there are two middle nodes, return the second middle node.

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
    #count size of LinkedList
    size = 0
    tmp = head
    while tmp do
        size += 1
        tmp = tmp.next
    end

    #size times move pointer through Linked List
    (size/2).times do
        head = head.next
    end
    head
end

# When traversing the list with a pointer slow, make another pointer fast 
# that traverses twice as fast. When fast reaches the end of the list, 
# slow must be in the middle.

def middle_node_two_pointers(head)
    fast = slow = head
    while fast && fast.next
        slow = slow.next
        fast = fast.next.next
    end
    slow
    #slow.val if we need a value of middle node
end

def middle_node_two_pointers_recurcion(head)
    find_middle_node(head, head)
end

def find_middle_node(slow, fast)
    return slow unless (fast = fast&.next)
    find_middle_node(slow.next, fast&.next)
end

list_of_nodes = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4))))
puts middle_node(list_of_nodes)
puts middle_node_two_pointers(list_of_nodes)
puts middle_node_two_pointers_recurcion(list_of_nodes)

# time complexity O(n)
# space complexity 0(1)