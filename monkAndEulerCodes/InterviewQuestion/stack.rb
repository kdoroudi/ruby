class Stack

  def initialize
   @store = []
  end

  def push(x)
   @store.push x
  end

  def pop
   @store.pop
  end

  def peek
   @store.last
  end

  def empty?
   @store.empty?
  end

 end
