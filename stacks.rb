
class Stack #LIFO last in first out, like a stack of pancakes, first one you eat is on top
  def initialize(capacity=Infinity)
    @capacity = capacity
    @storage = Hash.new
    @count = 0
  end

  # {0: 5, 1: 7, 2: 6}   this is the 'stack'
  def push(value) # push to the end of the stack
    if @count < @capacity
      @storage[@count] = value
      @count += 1
      return
    end
    "Stack is full, can't add it"
  end

  def pop
    unless @storage.length == 0
      @storage.delete(@count - 1)
      @count -= 1
    end
    "Can't delete since stack is empty"
  end
end

class Queue # First in first out FIFO - like a grocery line, whoever is first in line will be first to leave it
  def initialize(capacity=Infinity)
    @capacity = capacity
    @storage = Hash.new
    @head = 0
    @tail = 0
  end


end