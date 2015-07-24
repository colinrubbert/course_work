class BinaryTree
    attr_accessor :payload, :left, :right

    def initialize(payload, left=nil, right=nil)
        @payload = payload
        @left = left
        @right = right
    end

end

def btree(unsorted)
  first_node = unsorted.first
  @trunk = BinaryTree.new(first_node)
  prev_nod = @trunk
  unsorted.each do |number|
    insert(number, @trunk)
  end

  @sorted = []
  ordered_traversal
end

def insert(number, trunk)
  prev_node = trunk
  while prev_node != nil
    if number < prev_node.payload && prev_node.left == nil
      prev_node.left = BinaryTree.new(number)
      prev_node = @trunk
    elsif number > prev_node.payload && prev_node.right == nil
      prev_node.right = BinaryTree.new(number)
      prev_node = @trunk
    elsif number < prev_node.payload && prev_node.left != nil
      prev_node = prev_node.left
    elsif number > prev_node.payload && prev_node.right != nil
      prev_node = prev_node.right
    else
      return
    end
  end
end

def ordered_traversal(node = @trunk)
  return @sorted if (node == nil)
  ordered_traversal(node.left)
  @sorted.push(node.payload)
  ordered_traversal(node.right)
end

# Organization of Trunk, Branch, Leafs
# Leaf
ten       = BinaryTree.new(10, nil, nil)
six       = BinaryTree.new(6, nil, nil)
one       = BinaryTree.new(1, nil, nil)
# Branch
fourteen  = BinaryTree.new(14, ten, nil)
nine      = BinaryTree.new(9, nil, fourteen)
four      = BinaryTree.new(4, one, six)
# Trunk
trunk     = BinaryTree.new(7, four, nine)

unsorted = [7, 4, 9, 1, 6, 14, 10]
sorted = btree(unsorted)
puts "#{sorted}"
