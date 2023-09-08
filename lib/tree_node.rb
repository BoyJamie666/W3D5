require 'byebug'

class PolyTreeNode
  
  attr_reader :value, :parent, :children 

  def initialize(value)
    @value = value
    @parent = nil 
    @children = []
  end

  def parent=(parent_node)
    # debugger
    @parent = parent_node

    parent_node.children.delete(self)

    if self.parent == nil
      @children = nil
    elsif !parent_node.children.include?(self) 
      parent_node.children << self
    end

  end
end