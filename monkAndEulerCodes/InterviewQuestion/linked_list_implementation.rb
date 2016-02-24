#linked list
class Node
accessor = :node, :next  # the : creates a symbol A Ruby symbol is a thing that has both a number (integer) representation and a string representation.
def initialize(node)
    @node = node  # the @ symbol makes is an  instance variable Which means you can access these variables in ANY METHOD inside the class.
  end
end
