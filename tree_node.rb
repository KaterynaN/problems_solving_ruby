class TreeNode
    attr_accessor :value, :left, :right
    
    def initialize(value)
        @value = value
        @left = @right = nil
    end

    def insert(node)
        raise "This is a TreeNode" unless node.is_a? TreeNode

        if(node.value < @value)
            if @left.nil?
                @left = node
            else
                @left.insert(node)
            end
        elsif(node.value > @value)
            if @right.nil?
                @right = node
            else
                @right.insert(node)
            end
        end
    end

    def search(value)
        return true if value == @value

        if(value < @value)
            return false if left.nil?
            left.search(value)
        elsif(value > @value)
            return false if right.nil?
            right.search(value)
        end

    end

end

tree =  TreeNode.new(6)
tree.insert(TreeNode.new(2))
tree.insert(TreeNode.new(4))
tree.insert(TreeNode.new(8))
tree.insert(TreeNode.new(10))

puts tree.search(10)
puts tree.search(4)
puts tree.search(20)
