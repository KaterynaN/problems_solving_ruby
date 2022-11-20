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
      2, TreeNode.new(4)
    ), TreeNode.new(3, TreeNode.new(5))
  )


puts is_same_tree a, b
puts is_same_tree a, c