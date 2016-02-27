#  A linked list (at least a basic instance, and the instance I will demonstrate) is a class with two attributes: node and next. Node is just a generic type and can actually be a Ruby class like: String or Integer. Next is really a link to the next node.
class Node
  attr_accessor :node, :next
  def initialize(node)
  	@node = node
    @next = nil
  end
end

class Classy # my own attributes accessor class
  def kaveh_attr_accessor(incoming)
    arg = []
    arg << incoming
  arg.each do |a|
    self.class_eval("def #{a};@#{a};end") ## getter
    self.class_eval("def #{a}=(val);@#{a}=val;end") #setter
  end
end
end
# example of how to ref node
one  = Node.new("kaveh")
two = Node.new("mina")
three  = Node.new("roxie")
four = Node.new("omar")
one.next  = two
two.next = three
three.next  = four

p one






class LinkedList
	attr_accessor :head, :size
	def initialize
		@head = nil # initially, there is no 'head' and
		@size = 0 # the size of the list is 0
	end
end

  def add_to_end(value)
    if @size == 0 # if we're adding at beginning, it becomes our 'head'
      @head = Node.new(value)
			@size += 1
		else # else go through our nodes until we find one that doesnt have a reference and assign
      current = @head
			index = 0
			while index < @size
				current.next = Node.new(value) if current.next == nil
				current = current.next
				index += 1
			end
			@size += 1
