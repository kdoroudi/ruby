#linked list
class Node
attr_accessor = :node, :next  # the : creates a symbol A Ruby symbol is a thing that has both a number (integer) representation and a string representation.
def initialize(node)
    @node = node  # the @ symbol makes is an  instance variable Which means you can access these variables in ANY METHOD inside the class.
  end
end

class Entry
  attr_accessor :next, :data


  def initialize(data)
    @next = nil
    @data = data
  end
end

class Classy #
  def kaveh_attr_accessor(incoming)
    arg = []
    arg << incoming
  arg.each do |a|
    self.class_eval("def #{a};@#{a};end") ## getter
    self.class_eval("def #{a}=(val);@#{a}=val;end") #setter
  end
end
end
