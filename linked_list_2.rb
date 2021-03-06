class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

end

def print_values(list_node)
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(list_node.next_node)
  end
end

def reverse_list(list_node, previous=nil)
  until list_node.next_node == nil
    if previous.nil?
      previous = list_node
      list_node = previous.next_node
      previous.next_node = nil
    else
      next_node = list_node.next_node if list_node != nil
      list_node.next_node = previous if list_node != nil
      previous = list_node
      list_node = next_node
    end
  end

  list_node.next_node = previous if list_node.next_node == nil
  list_node
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(3200, node3)

print_values(node4)
puts "--------"
revlist = reverse_list(node4)
print_values(revlist)
