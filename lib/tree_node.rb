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
    if parent != nil
       parent.children.delete(self)
    end
   
    @parent = parent_node

    if self.parent == nil
      @children = nil
    elsif !parent_node.children.include?(self) 
      parent.children << self
    end
  end

  
end