class Tree
    attr_accessor :payload, :children

    def initialize(payload, children)
        @payload = payload
        @children = children
    end

end

def find_node(node, search_value)
  if node.payload == search_value
    puts "returning #{node.payload}"
    node
  else
    # Loop through the branches and leaves to find the eleventh_node
    node.children.each do |child|
      puts "find from child #{child.payload}"
      result = find_node(child, search_value)
      return result if result.payload == search_value
    end
    node
  end

end


# The "Leafs" of a tree, elements that have no children
fifth_node    = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node   = Tree.new(4, [])


# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree
trunk   = Tree.new(2, [seventh_node, fifth_node])

puts find_node(trunk, 11).payload
