# linked lists
# deleting(pop last thing) and adding(push to end) is easier than in arrays
# reverse, delete @ certain value, search in ordered linked list

# linked lists don't exist in js or ruby so you have to create a linked list class to create it

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node #actual next node object, not the value, since it doesn't exist as a value in your database, it only exists as a reference to the next node
  end
end

class Linked_List
  attr_accessor :head

  def initialize(head)
    @head = head
  end

  #POP
  def pop
    current_node = @head # 1st node of list
    until current_node.next_node.next_node == nil
      current_node = current_node.next_node
    end
    current_node.next_node = nil
  end

  #PUSH
  def push

  end
end


