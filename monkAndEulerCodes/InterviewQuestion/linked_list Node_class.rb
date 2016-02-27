#  A linked list (at least a basic instance, and the instance I will demonstrate) is a class with two attributes: node and next. Node is just a generic type and can actually be a Ruby class like: String or Integer. Next is really a link to the next node.
class Node
  attr_accessor :node, :next

  def initialize(node)
    @node = node
  end
end
