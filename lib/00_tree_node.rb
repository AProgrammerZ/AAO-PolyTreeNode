class PolyTreeNode
    attr_reader :parent, :children, :value
    
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(value)
        # @parent.children.delete(self)
        @parent = value
        @parent.children << self unless value == nil
    end
end