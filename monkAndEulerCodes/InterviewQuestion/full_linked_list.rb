class Node
  attr_accessor :value

	def initialize(value, next_node=nil, prev_node=nil)
		@value = value
		@next_node = next_node
		@prev_node = prev_node
	end

  def next_node
    @next_node
  end

  def next_node=(node)
    @next_node = node
  end

  def prev_node
    @prev_node
  end

  def prev_node=(node)
    @prev_node = node
  end
end

def reverse_inplace(node)
  first = node
  second = node.next_node
  current = node.next_node
  first.next_node = nil
  while second != nil
    second = second.next_node
    current.next_node = first
    first = current
    current = second
  end
  first
end

#+++++++++++++++++++++++++++++++++++++++++++++++++++++
class List
  attr_reader :length

  def initialize
    @head = nil
    @tail = nil
    @traversal_count = 0
    @length = 0
  end
  #-------------------------------------------------------
  def appends(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head.prev_node = new_node if @head
    @head = new_node
    @tail = @head
    @length +=1
  end
  #------------------------------------------------------

  def prepends(value)
    current = @head
    while current.next_node != nil
      current = current.next_node
    end
    current.next_node = Node.new(value,nil)
    @length +=1
    self
  end

  #-------------------------------------------------------

  def print
    node = @head
    while node != nil
      puts node.value
      node = node.next_node
      puts @length
    end
  end

  #-------------------------------------------------------
  include Enumerable

  def each
    return nil if @head.nil?
    value = @head
    until value.nil?
      yield value
      value = value.next_node
    end
  end

  def reverse_copy
    new_list = List.new
    self.each {|values| new_list.appends(Node.new(values.value))}
    return new_list
  end
#---------------------------------------------------------

end

#========================================================
list = List.new
list append 'evan'
list append 'mina'
list append 'kaveh'
list prepends 'roxie'
list prepends 'pishi'
list.print

class ListIterator


  def print
    node = @head
    while node != nil
      puts node.value
      node = node.next_node
    end
  end

  def new_list(name_of_the_list) # create a new list
    name_of_the_list = List.new
  end

  def current(current_list)
    print.current_list
  end

end


class List
  def iterator
    ListIterator.new(@head)
  end
end

class ListIterator
  def initialize(head)
  end

  def curr
  end

  def next
  end

  def finished?
  end
end

list = List.new

iter = ListIterator(list)
iter = list.iterator

until iter.finished?
  puts iter.curr
  iter.next
end

for(iter = ListIterator(list); iter.finished?; iter.next) {
  puts iter.curr
}


