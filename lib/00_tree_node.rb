class PolyTreeNode
    attr_reader :parent, :children, :value
    
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(value)
        @parent.children.delete(self) unless @parent == nil
        @parent = value
        @parent.children << self unless value == nil
    end

    def add_child(child_node)
        child_node.parent=(self)
    end

    def remove_child(child_node)
        raise "not a child" unless @children.include?(child_node)
        child_node.parent=(nil)
        @children.delete(child_node)
    end
end