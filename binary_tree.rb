#check if 2 given binary trees are equal

class TreeNode
    attr_accessor :val, :left, :right

    def initialize(val, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

def is_same_tree(p, q)
    return true if !p && !q

    if p && q && p.val == q.val
        return (is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right))
    end
    return false
end

def is_symmetric(p)
    return true unless p
    is_mirror?(p.left, p.right)
end

def is_mirror?(node1, node2)
    return true if !node1 && !node2
    return false if node1&.val != node2&.val
    is_mirror?(node1.left, node2.right) && is_mirror?(node1.right, node2.left)
end
  
  a = TreeNode.new(
    1, TreeNode.new(
      2, TreeNode.new(4)
    ), TreeNode.new(3)
  )
  b = TreeNode.new(
    1, TreeNode.new(
      2, TreeNode.new(4)
    ), TreeNode.new(3)
  )
  c = TreeNode.new(
    1, TreeNode.new(
      2, TreeNode.new(4), TreeNode.new(5)
    ), TreeNode.new(2, TreeNode.new(5), TreeNode.new(4))
  )


puts is_same_tree a, b
puts is_same_tree a, c
puts is_symmetric(c)